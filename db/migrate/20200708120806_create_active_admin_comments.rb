# typed: false
# frozen_string_literal: true

CreateActiveAdminCommentsParent = ActiveRecord::Migration[6.0]
class CreateActiveAdminComments < CreateActiveAdminCommentsParent
  def self.up
    create_table :active_admin_comments do |t|
      t.string :namespace, null: false
      t.text   :body, null: false
      t.references :resource, polymorphic: true
      t.references :author, polymorphic: true
      t.timestamps
    end
    add_index :active_admin_comments, [:namespace]
  end

  def self.down
    drop_table :active_admin_comments
  end
end
