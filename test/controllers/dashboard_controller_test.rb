# typed: false
# frozen_string_literal: true

require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in(users(:one))
  end

  test 'should get index' do
    get dashboard_index_url
    assert_response :success
  end
end
