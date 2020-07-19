# typed: false
# frozen_string_literal: true

require 'test_helper'

class SlackControllerTest < ActionDispatch::IntegrationTest
  test 'tracking pairing' do
    slack_client = Minitest::Mock.new
    def slack_client.send_message(_url, _text); end

    SlackClient.stub :new, slack_client do
      post track_pairing_url, as: :json, params: {
        user_id: users(:one).slack_accounts.first.slack_id,
        text: "with @#{users(:two).slack_accounts.first.slack_name}",
        response_url: ''
      }
      assert_response :ok
    end
  end
end
