# typed: false
# frozen_string_literal: true

AddSlackNameToSlackAccountParent = ActiveRecord::Migration[6.0]
# typed: false
class AddSlackNameToSlackAccount < AddSlackNameToSlackAccountParent
  def change
    safety_assured do
      add_column :slack_accounts, :slack_name, :string, null: false, default: ''
      add_index :slack_accounts, :slack_name
    end
  end
end
