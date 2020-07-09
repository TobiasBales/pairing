# typed: false

# frozen_string_literal: true

RenameTeamMembersToMembershipsParent = ActiveRecord::Migration[6.0]
class RenameTeamMembersToMemberships < RenameTeamMembersToMembershipsParent
  def change
    safety_assured do
      rename_table :team_members, :memberships
    end
  end
end
