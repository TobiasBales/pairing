# typed: false
# frozen_string_literal: true

require 'application_system_test_case'
require 'system/pages/teams_page'

class TeamsTest < ApplicationSystemTestCase
  include Warden::Test::Helpers

  setup do
    @team = teams(:one)
    @page = TeamsPage.new

    login_as(users(:one), scope: :user)
  end

  test 'visiting the index' do
    visit teams_url

    assert @page.on_index?
  end

  test 'creating a Team' do
    visit teams_url

    @page.new_team
    @page.fill_name('New test team')
    @page.save

    assert_text 'Saved New test team'
  end

  test 'adding team members to a Team' do
    visit teams_url

    @page.edit_team teams(:one)
    @page.select_last_member(users(:four))
    @page.save

    assert_text "Saved #{teams(:one).name}"
    assert_text users(:four).name
  end

  test 'updating a Team' do
    visit teams_url

    @page.edit_team teams(:one)
    @page.fill_name 'TeamOne - updated'
    @page.save

    assert_text 'Saved TeamOne - updated'
  end

  test 'destroying a Team' do
    visit teams_url

    @page.goto_team teams(:one)
    @page.delete

    assert_text 'Team was successfully destroyed'
  end
end
