# typed: strict
# frozen_string_literal: true

class PairingCommand < SlackCommand
  extend T::Sig

  sig { params(message: SlackMessage, slack_client: SlackClient).returns(SlackCommand) }
  def self.for(message:, slack_client: SlackClient.new)
    TrackPairingCommand.new(
      message: message,
      slack_client: slack_client
    )
  end
end
