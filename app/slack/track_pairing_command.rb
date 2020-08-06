# typed: strict
# frozen_string_literal: true

class TrackPairingCommand < SlackCommand
  extend T::Sig

  MESSAGE_REGEX = T.let(/(with )?@(.*)/.freeze, Regexp)

  sig { params(message: SlackMessage, slack_client: SlackClient, slack_messages: SlackMessages).void }
  def initialize(message:, slack_client:, slack_messages:)
    @message = message
    @slack_messages = slack_messages
    @slack_client = slack_client
    @team = T.let(nil, T.nilable(Team))
  end

  sig { params(message: SlackMessage).returns(T::Boolean) }
  def self.handles?(message)
    message.match(MESSAGE_REGEX).present?
  end

  # rubocop:disable Metrics/MethodLength
  sig { void }
  def execute
    initiator = SlackAccount.find_by(slack_id: @message.sender)
    if initiator.nil?
      @slack_client.send(@message.response_url,
                         @slack_messages.initiator_has_no_initiator,
                         type: :ephemeral)
      return
    end

    if initiator.user.teams.empty?
      @slack_client.send(@message.response_url,
                         @slack_messages.no_team,
                         type: :ephemeral)
      return
    end

    partner = SlackAccount.find_by(slack_name: partner_from_message)

    if partner.nil?
      @slack_client.send(@message.response_url,
                         @slack_messages.partner_has_no_slack_account(partner: partner_from_message),
                         type: :ephemeral)
      return false
    end

    team = initiator.user.teams.find { |t| t.members.include?(partner.user) }
    if team.nil?
      @slack_client.send(@message.response_url,
                         @slack_messages.not_same_team(partner: partner_from_message),
                         type: :ephemeral)
      return
    end

    session = team.build_session([initiator.user, partner.user], Time.zone.today)
    if session.save
      @slack_client.send(@message.response_url,
                         @slack_messages.pairing_recorded(initiator: initiator, partner: partner))
    else
      @slack_client.send(@message.response_url,
                         @slack_messages.failed_to_save_session(errors: session.errors.full_messages.join),
                         type: :ephemeral)
    end
  end
  # rubocop:enable Metrics/MethodLength

  private

  sig { returns(String) }
  def partner_from_message
    T.must(T.must(@message.match(MESSAGE_REGEX))[2])
  end
end
