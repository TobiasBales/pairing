# typed: strict

# == Schema Information
#
# Table name: team_members
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :uuid             not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_team_members_on_team_id  (team_id)
#  index_team_members_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (team_id => teams.id)
#  fk_rails_...  (user_id => users.id)
#
# frozen_string_literal: true

class TeamMember < ApplicationRecord
  extend T::Sig
  belongs_to :user
  belongs_to :team

  validates :user, presence: true
  validates :team, presence: true
end
