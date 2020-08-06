# typed: strict
# frozen_string_literal: true

class SlackMessage
  extend T::Sig

  sig { returns(String) }
  attr_reader :response_url, :sender

  sig { params(message: String, sender: String, response_url: String).void }
  def initialize(message:, sender:, response_url:)
    @message = message
    @sender = sender
    @response_url = response_url
  end

  sig { params(regex: Regexp).returns(T.nilable(MatchData)) }
  def match(regex)
    @message.match(regex)
  end
end
