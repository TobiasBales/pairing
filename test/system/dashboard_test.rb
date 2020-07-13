# typed: false

# frozen_string_literal: true

require 'application_system_test_case'
require 'system/pages/dashboard_page'

class DashboardTest < ApplicationSystemTestCase
  include Warden::Test::Helpers

  setup do
    @team = teams(:one)

    login_as(users(:one), scope: :user)

    @page = DashboardPage.new
  end

  test 'initial state of pairing matrix is correct' do
    visit root_url

    assert_equal 0, @page.number_of_sessions([users(:one), users(:two)])
    assert_equal 0, @page.number_of_sessions([users(:two), users(:one)])
    assert_equal 0, @page.number_of_sessions([users(:one), users(:three)])
    assert_equal 0, @page.number_of_sessions([users(:three), users(:one)])
    assert_equal 0, @page.number_of_sessions([users(:two), users(:three)])
    assert_equal 0, @page.number_of_sessions([users(:three), users(:two)])

    assert @page.can_pair_with?(users(:two))
    assert @page.can_pair_with?(users(:three))
  end

  test 'adding a pairing session updates the pairing matrix and disables the button' do
    visit root_url

    @page.pair_with(users(:two))

    assert_equal 1, @page.number_of_sessions([users(:one), users(:two)])
    assert_equal 1, @page.number_of_sessions([users(:two), users(:one)])
    assert_equal 0, @page.number_of_sessions([users(:one), users(:three)])
    assert_equal 0, @page.number_of_sessions([users(:three), users(:one)])
    assert_equal 0, @page.number_of_sessions([users(:two), users(:three)])
    assert_equal 0, @page.number_of_sessions([users(:three), users(:two)])

    assert_not @page.can_pair_with?(users(:two))
    assert @page.can_pair_with?(users(:three))
  end
end
