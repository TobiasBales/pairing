# typed: false
# frozen_string_literal: true

CreateTeamMembersParent = ActiveRecord::Migration[6.0]
class CreateTeamMembers < CreateTeamMembersParent
  def change
    create_table :team_members, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :team, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
