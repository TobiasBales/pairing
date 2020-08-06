# typed: strict
# frozen_string_literal: true

class SlackClient
  extend T::Sig

  sig { params(response_url: String, text: String, type: T.nilable(Symbol)).void }
  def send(response_url, text, type: nil)
    HttpClient.instance.post(response_url, { text: text, "response_type": type }.to_json)
  end
end
