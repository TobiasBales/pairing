# typed: strict
# frozen_string_literal: true

class HttpClient
  extend T::Sig

  sig { returns(Faraday::Connection) }
  def self.instance
    Faraday.new(headers: { 'Content-Type' => 'application/json' }) do |conn|
      conn.response :json, content_type: /\bjson$/
      conn.adapter Faraday.default_adapter
    end
  end
end
