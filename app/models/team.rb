# typed: strict

# == Schema Information
#
# Table name: teams
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_teams_on_name  (name) UNIQUE
#
# frozen_string_literal: true

class Team < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  has_many :team_members, dependent: :destroy
  has_many :users, through: :team_members

  accepts_nested_attributes_for :team_members, reject_if: :all_blank, allow_destroy: true
end
