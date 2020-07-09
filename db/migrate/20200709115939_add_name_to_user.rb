# typed: false

# frozen_string_literal: true

AddNameToUserParent = ActiveRecord::Migration[6.0]
class AddNameToUser < AddNameToUserParent
  def change
    add_column :users, :name, :string, null: false, default: ''
    safety_assured do
      add_index :users, :name, unique: true
    end
  end
end
