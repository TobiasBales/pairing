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
    @slack_account = T.let(nil, T.nilable(SlackAccount))
    @partner_slack_account = T.let(nil, T.nilable(SlackAccount))
    @team = T.let(nil, T.nilable(Team))
  end

  sig { void }
  def execute
    load_slack_account

    return unless validate_slack_account_present

    return unless validate_team_present

    return unless validate_message

    load_partner_slack_account

    return unless validate_partner

    find_team

    return unless validate_team

    save_session
  end

  private

  sig { returns(SlackAccount) }
  def initiator
    T.must(@slack_account)
  end

  sig { returns(SlackAccount) }
  def partner
    T.must(@partner_slack_account)
  end

  sig { void }
  def save_session
    session = T.must(@team).build_session([initiator.user, partner.user], Time.zone.today)
    if session.save
      @slack_client.send(@message.response_url,
                         @slack_messages.pairing_recorded(initiator: initiator, partner: partner))
    else
      @slack_client.send(@message.response_url,
                         @slack_messages.failed_to_save_session(errors: session.errors.full_messages.join),
                         type: :ephemeral)
    end
  end

  sig { void }
  def load_slack_account
    @slack_account = SlackAccount.find_by(slack_id: @message.sender)
  end

  sig { void }
  def load_partner_slack_account
    @partner_slack_account = SlackAccount.find_by(slack_name: partner_from_message)
  end

  sig { void }
  def find_team
    @team = T.must(@slack_account).user.teams.find { |t| t.members.include?(T.must(@partner_slack_account).user) }
  end

  sig { returns(String) }
  def partner_from_message
    T.must(T.must(@message.match(MESSAGE_REGEX))[2])
  end

  sig { returns(T::Boolean) }
  def validate_team
    if @team.nil?
      @slack_client.send(@message.response_url,
                         @slack_messages.not_same_team(partner: partner_from_message),
                         type: :ephemeral)
      return false
    end

    true
  end

  sig { returns(T::Boolean) }
  def validate_partner
    if @partner_slack_account.nil?
      @slack_client.send(@message.response_url,
                         @slack_messages.partner_has_no_slack_account(partner: partner_from_message),
                         type: :ephemeral)
      return false
    end

    true
  end

  sig { returns(T::Boolean) }
  def validate_message
    unless @message.match(MESSAGE_REGEX)
      @slack_client.send(@message.response_url,
                         @slack_messages.invalid_command,
                         type: :ephemeral)
      return false
    end

    true
  end

  sig { returns(T::Boolean) }
  def validate_slack_account_present
    if @slack_account.nil?
      @slack_client.send(@message.response_url,
                         @slack_messages.initiator_has_no_slack_account,
                         type: :ephemeral)

      return false
    end

    true
  end

  sig { returns(T::Boolean) }
  def validate_team_present
    if T.must(@slack_account).user.teams.empty?
      @slack_client.send(@message.response_url,
                         @slack_messages.no_team,
                         type: :ephemeral)

      return false
    end

    true
  end
end
