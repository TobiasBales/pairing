# typed: strict
# frozen_string_literal: true

class TrackPairingCommand < SlackCommand
  extend T::Sig
  include GeneratedUrlHelpers

  MESSAGE_REGEX = T.let(/(with )?@(.*)/.freeze, Regexp)

  sig { params(message: String, slack_id: String, response_url: String, slack_client: SlackClient).void }
  def initialize(message:, slack_id:, response_url:, slack_client: SlackClient.new)
    @message = message
    @slack_id = slack_id
    @response_url = response_url
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

  sig { void }
  def save_session
    session = T.must(@team).build_session([T.must(@slack_account).user, T.must(@partner_slack_account).user],
                                          Time.zone.today)
    if session.save
      # rubocop:disable Layout/LineLength
      @slack_client.send_message(@response_url,
                                 "Awesome, recorded a pairing session with <@#{T.must(@slack_account).slack_name}> and <@#{T.must(@partner_slack_account).slack_name}>.")
      # rubocop:enable Layout/LineLength
    else
      @slack_client.send_ephemeral_message(@response_url,
                                           "Failed to save session: #{session.errors.full_messages.join}")
    end
  end

  sig { void }
  def load_slack_account
    @slack_account = SlackAccount.find_by(slack_id: @slack_id)
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
      # rubocop:disable Layout/LineLength
      @slack_client.send_ephemeral_message(@response_url,
                                           "You and <@#{partner_from_message}> not on the same team. Please join the same team first")
      # rubocop:enable Layout/LineLength
      return false
    end

    true
  end

  sig { returns(T::Boolean) }
  def validate_partner
    if @partner_slack_account.nil?
      # rubocop:disable Layout/LineLength
      @slack_client.send_ephemeral_message(@response_url,
                                           "<@#{partner_from_message}> has not registered their slack account, please ask them to do so using this <#{user_slack_omniauth_authorize_url}|link>")
      # rubocop:enable Layout/LineLength
      return false
    end

    true
  end

  sig { returns(T::Boolean) }
  def validate_message
    unless @message.match(MESSAGE_REGEX)
      @slack_client.send_ephemeral_message(@response_url, 'The command must match /pairing (with) @name')
      return false
    end

    true
  end

  sig { returns(T::Boolean) }
  def validate_slack_account_present
    if @slack_account.nil?
      # rubocop:disable Layout/LineLength
      @slack_client.send_ephemeral_message(@response_url,
                                           "You do not have a slack account connected, please do so <#{user_slack_omniauth_authorize_url}|here>")
      # rubocop:enable Layout/LineLength
      return false
    end

    true
  end

  sig { returns(T::Boolean) }
  def validate_team_present
    if T.must(@slack_account).user.teams.empty?
      # rubocop:disable Layout/LineLength
      @slack_client.send_ephemeral_message(@response_url,
                                           "You do not have a team, please <#{new_team_url}|create one> or ask your team to invite you")
      # rubocop:enable Layout/LineLength
      return false
    end

    true
  end
end
