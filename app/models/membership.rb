# typed: strict

# frozen_string_literal: true

# == Schema Information
#
# Table name: memberships
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :uuid             not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_memberships_on_team_id  (team_id)
#  index_memberships_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (team_id => teams.id)
#  fk_rails_...  (user_id => users.id)
#

class Membership < ApplicationRecord
  extend T::Sig
  belongs_to :user
  belongs_to :team

  validates :user, presence: true
  validates :team, presence: true
end
