# typed: strict
# == Schema Information
#
# Table name: sessions
#
#  id         :uuid             not null, primary key
#  date       :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :uuid             not null
#
# Indexes
#
#  index_sessions_on_team_id  (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (team_id => teams.id)
#

# frozen_string_literal: true

class Session < ApplicationRecord
  extend T::Sig

  belongs_to :team

  has_many :participations, dependent: :destroy
  has_many :participants, through: :participations, source: :user

  validates :team, presence: true
  validates :participations, presence: true
  validates :date, presence: true

  accepts_nested_attributes_for :participations

  scope :current, ->(days = 14) { where('date >= ?', (days - 1).days.ago.beginning_of_day) }

  sig { params(users: T::Array[User]).returns(T::Boolean) }
  def matching_participants(users)
    # when using the :participants relation directly bullet goes off for some reason
    participants = participations.map(&:user)

    users.all? { |participant| participants.include?(participant) }
  end
end
