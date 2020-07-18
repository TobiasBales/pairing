# typed: false
# frozen_string_literal: true

CreateSlackAccountsParent = ActiveRecord::Migration[6.0]
class CreateSlackAccounts < CreateSlackAccountsParent
  def change
    create_table :slack_accounts, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :slack_id, null: false
      t.string :slack_team, null: false

      t.timestamps
    end

    add_index :slack_accounts, [:slack_id, :slack_team], unique: true
  end
end
