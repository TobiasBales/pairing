# typed: strict
# frozen_string_literal: true

class TeamsPage
  extend T::Sig

  include Capybara::DSL

  sig { returns(T::Boolean) }
  def on_index?
    find('.breadcrumb-item.active', text: 'Teams').present?
  end

  sig { params(team: Team).void }
  def goto_team(team)
    click_on team.name
  end

  sig { void }
  def new_team
    click_on 'New team'
  end

  sig { params(team: Team).void }
  def edit_team(team)
    click_on team.name
    click_on 'Edit'
  end

  sig { params(name: String).void }
  def fill_name(name)
    fill_in 'Name', with: name
  end

  sig { void }
  def save
    click_on 'Save'
  end

  sig { void }
  def delete
    page.accept_confirm do
      click_on 'Delete'
    end
  end

  sig { params(user: User).void }
  def select_last_member(user)
    all('select').last.find(:option, text: user.name).select_option
  end
end
