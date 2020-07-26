# typed: strict
# frozen_string_literal: true

class UnknownSlackCommand < SlackCommand
  extend T::Sig

  sig { params(message: SlackMessage, slack_client: SlackClient, slack_messages: SlackMessages).void }
  def initialize(message:, slack_client:, slack_messages:)
    @message = message
    @slack_messages = slack_messages
    @slack_client = slack_client
  end

  sig { void }
  def execute
    @slack_client.send(@message.response_url,
                       @slack_messages.unknown_command,
                       type: :ephemeral)
  end
end
