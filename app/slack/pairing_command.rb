# typed: strict
# frozen_string_literal: true

class PairingCommand < SlackCommand
  extend T::Sig

  sig { params(message: SlackMessage, slack_client: SlackClient, slack_messages: SlackMessages).returns(SlackCommand) }
  def self.for(message:, slack_client: SlackClient.new, slack_messages: SlackMessages.new)
    if TrackPairingCommand.handles?(message)
      TrackPairingCommand.new(message: message, slack_client: slack_client, slack_messages: slack_messages)
    else
      UnknownSlackCommand.new(message: message, slack_client: slack_client, slack_messages: slack_messages)
    end
  end
end
