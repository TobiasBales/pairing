# typed: strict
# frozen_string_literal: true

class SlackCommand
  extend T::Sig

  sig { params(slack_id: String, response_url: String).void }
  def execute(slack_id:, response_url:); end
end
