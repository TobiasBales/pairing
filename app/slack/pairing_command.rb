# typed: strict
# frozen_string_literal: true

class PairingCommand < SlackCommand
  extend T::Sig

  sig do
    params(message: String, slack_id: String, response_url: String, slack_client: SlackClient).returns(SlackCommand)
  end
  def self.for(message:, slack_id:, response_url:, slack_client: SlackClient.new)
    TrackPairingCommand.new(
      message: message,
      slack_id: slack_id,
      response_url: response_url,
      slack_client: slack_client
    )
  end
end
