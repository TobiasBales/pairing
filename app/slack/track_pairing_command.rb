# typed: strict
# frozen_string_literal: true

class TrackPairingCommand < SlackCommand
  extend T::Sig
  include GeneratedUrlHelpers

  sig { params(slack_id: String, response_url: String, slack_client: SlackClient).void }
  def initialize(slack_id:, response_url:, slack_client: SlackClient.new)
    @slack_client = slack_client
    @slack_id = slack_id
    @response_url = response_url
    @slack_account = T.let(nil, T.nilable(SlackAccount))
  end

  sig { void }
  def execute
    load_slack_account

    return unless validate_slack_account_present

    return unless validate_team_present

    # to be implemented :d
  end

  private

  sig { void }
  def load_slack_account
    @slack_account = SlackAccount.find_by(slack_id: @slack_id)
  end

  sig { returns(T::Boolean) }
  def validate_slack_account_present
    if @slack_account.nil?
      # rubocop:disable Layout/LineLength
      @slack_client.send_ephemeral_message(@response_url,
                                           "You do not have a slack account connected, please do so <#{user_slack_omniauth_authorize_url}|here>")
      return false
      # rubocop:enable Layout/LineLength
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
    end

    true
  end
end
