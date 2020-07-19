# typed: false
# frozen_string_literal: true

class SlackClient
  extend T::Sig

  sig { params(response_url: String, text: String).void }
  def send_message(response_url, text)
    send(response_url, text)
  end

  sig { params(response_url: String, text: String).void }
  def send_ephemeral_message(response_url, text)
    send(response_url, text, type: :ephemeral)
  end

  private

  sig { params(response_url: String, text: String, type: T.nilable(Symbol)).void }
  def send(response_url, text, type: nil)
    Faraday.post(response_url, { text: text, "response_type": type }.to_json, headers).inspect
  end

  sig { returns(T::Hash[Symbol, String]) }
  def headers
    { "Content-Type": 'application/json' }
  end
end
