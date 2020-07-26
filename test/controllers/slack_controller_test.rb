# typed: false
# frozen_string_literal: true

require 'test_helper'

class SlackControllerTest < ActionDispatch::IntegrationTest
  test 'tracking pairing' do
    SlackClient.stub :new, stub_slack_client do
      post pairing_url, as: :json, params: {
        user_id: users(:one).slack_accounts.first.slack_id,
        text: "with @#{users(:two).slack_accounts.first.slack_name}",
        response_url: ''
      }
      assert_response :ok
    end
  end

  test 'tracking pairing with short notation' do
    SlackClient.stub :new, stub_slack_client do
      post pairing_url, as: :json, params: {
        user_id: users(:one).slack_accounts.first.slack_id,
        text: "@#{users(:two).slack_accounts.first.slack_name}",
        response_url: ''
      }
      assert_response :ok
    end
  end

  private

  def stub_slack_client
    slack_client = Minitest::Mock.new

    def slack_client.send_message(_url, _text); end

    def slack_client.is_a?(klass)
      klass == SlackClient
    end

    slack_client
  end
end
