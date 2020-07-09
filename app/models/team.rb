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
  validates :name, uniqueness: true, presence: true

  has_many :team_members, inverse_of: :team, dependent: :destroy
  has_many :members, -> { order(:name) }, through: :team_members, source: :user
  has_many :sessions, dependent: :destroy

  accepts_nested_attributes_for :team_members, reject_if: :all_blank, allow_destroy: true
end
