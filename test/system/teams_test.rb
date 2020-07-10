# typed: false

# frozen_string_literal: true

require 'application_system_test_case'

class TeamsTest < ApplicationSystemTestCase
  include Warden::Test::Helpers

  setup do
    @team = teams(:one)
    login_as(users(:one), scope: :user)
  end

  test 'visiting the index' do
    visit teams_url
    assert_selector '.breadcrumb-item.active', text: 'Teams'
  end

  test 'creating a Team' do
    visit teams_url
    click_on 'New team'
    name = "new #{@team.name}"

    fill_in 'Name', with: name
    click_on 'Create'

    assert_text "Saved #{name}"
    click_on 'Back'
  end

  test 'updating a Team' do
    visit teams_url
    click_on 'TeamOne', match: :first
    click_on 'Edit', match: :first

    new_name = "#{@team.name} - updated"
    fill_in 'Name', with: new_name
    click_on 'Save'

    assert_text "Saved #{new_name}"
    click_on 'Back'
  end

  test 'destroying a Team' do
    visit teams_url
    click_on 'TeamOne', match: :first

    page.accept_confirm do
      click_on 'Delete', match: :first
    end

    assert_text 'Team was successfully destroyed'
  end
end
