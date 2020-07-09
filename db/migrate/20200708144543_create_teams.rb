# typed: false
# frozen_string_literal: true

CreateTeamsParent = ActiveRecord::Migration[6.0]
class CreateTeams < CreateTeamsParent
  def change
    create_table :teams, id: :uuid do |t|
      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
