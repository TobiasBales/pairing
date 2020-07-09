# typed: false

# frozen_string_literal: true

CreateParticipationsParent = ActiveRecord::Migration[6.0]
class CreateParticipations < CreateParticipationsParent
  def change
    create_table :participations, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :session, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
