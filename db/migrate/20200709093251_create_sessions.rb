# typed: false

# frozen_string_literal: true

CreateSessionsParent = ActiveRecord::Migration[6.0]
class CreateSessions < CreateSessionsParent
  def change
    create_table :sessions, id: :uuid do |t|
      t.date :date, null: false
      t.references :team, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
