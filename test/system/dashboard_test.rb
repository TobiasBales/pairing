# typed: false

# frozen_string_literal: true

require 'application_system_test_case'

class DashboardTest < ApplicationSystemTestCase
  include Warden::Test::Helpers

  setup do
    @team = teams(:one)
    @team.memberships.build(user: users(:two))
    @team.memberships.build(user: users(:three))
    @team.save!
    login_as(users(:one), scope: :user)
  end

  test 'initial state of pairing matrix is correct' do
    visit root_url

    assert_equal 6, all('td', text: '0').length
    assert find_button(users(:two).name)
    assert find_button(users(:three).name)
  end

  test 'adding a pairing session updates the pairing matrix and disables the button' do
    visit root_url

    click_on users(:two).name

    assert_equal 4, all('td', text: '0').length
    assert_equal 2, all('td', text: '1').length

    assert find_button(users(:two).name, disabled: true)
    assert find_button(users(:three).name)
  end
end
