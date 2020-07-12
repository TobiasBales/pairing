# typed: strict
# frozen_string_literal: true

class DashboardPage
  extend T::Sig

  include Capybara::DSL

  sig { params(user: User).returns(T::Boolean) }
  def can_pair_with?(user)
    has_button?(user.name)
  end

  sig { params(users: T::Array[User]).returns(Numeric) }
  def number_of_sessions(users)
    first_user, second_user = users

    column = user_column_number(T.must(second_user))

    user_row(T.must(first_user)).all('td')[column].text.to_i
  end

  sig { params(user: User).void }
  def pair_with(user)
    click_button(user.name)
  end

  private

  sig { params(user: User).returns(Capybara::Node::Element) }
  def user_row(user)
    find('tbody').find('th', text: user.name).ancestor('tr')
  end

  sig { params(user: User).returns(Numeric) }
  def user_column_number(user)
    find('thead').all('th').each_with_index do |element, i|
      # - 1 since the header tr has an empty td for the user name column
      return i - 1 if element.text == user.name
    end
  end
end
