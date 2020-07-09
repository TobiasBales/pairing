# typed: strict

# frozen_string_literal: true

# == Schema Information
#
# Table name: teams
#
#  id         :uuid             not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_teams_on_name  (name) UNIQUE
#

class Team < ApplicationRecord
  extend T::Sig
  validates :name, uniqueness: true, presence: true

  has_many :memberships, inverse_of: :team, dependent: :destroy
  has_many :members, -> { order(:name) }, through: :memberships, source: :user
  has_many :sessions, dependent: :destroy

  accepts_nested_attributes_for :memberships, reject_if: :all_blank, allow_destroy: true

  sig { params(users: User).returns(Numeric) }
  def number_of_sessions_for(*users)
    sessions.current.filter do |session|
      users.all? { |participant| session.participations.include(participant) }
    end.length
  end
end
