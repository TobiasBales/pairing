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

  sig { params(users: T::Array[User], date: Date).returns(Session) }
  def build_session(users, date = Time.zone.today)
    session = sessions.build(date: date)
    users.each do |user|
      session.participations.build(user: user)
    end
    session
  end

  sig { params(days: Integer).returns(PairingStatistics) }
  def pairing_statistics(days)
    PairingStatistics.new(self, days)
  end
end
