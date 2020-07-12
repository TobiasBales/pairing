# typed: false

# frozen_string_literal: true

AddMembershipUniquenessConstraintParent = ActiveRecord::Migration[6.0]
class AddMembershipUniquenessConstraint < AddMembershipUniquenessConstraintParent
  disable_ddl_transaction!

  def change
    add_index :memberships, [:user_id, :team_id], unique: true, algorithm: :concurrently
  end
end
