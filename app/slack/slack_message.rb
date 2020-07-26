# typed: strict
# frozen_string_literal: true

class SlackMessage
  extend T::Sig

  sig { returns(String) }
  attr_reader :response_url, :slack_id

  sig { params(message: String, slack_id: String, response_url: String).void }
  def initialize(message:, slack_id:, response_url:)
    @message = message
    @slack_id = slack_id
    @response_url = response_url
  end

  sig { params(regex: Regexp).returns(T.nilable(MatchData)) }
  def match(regex)
    @message.match(regex)
  end
end
