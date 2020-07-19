# typed: false
# frozen_string_literal: true

require 'test_helper'

class SlackControllerTest < ActionDispatch::IntegrationTest
  test 'tracking pairing' do
    post track_pairing_url, as: :json, params: {
      user_id: users(:one).slack_accounts.first.slack_id,
      response_url: ''
    }
    assert_response :ok
  end
end
