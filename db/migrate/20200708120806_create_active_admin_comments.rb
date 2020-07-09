# typed: false
# frozen_string_literal: true

CreateActiveAdminCommentsParent = ActiveRecord::Migration[6.0]
class CreateActiveAdminComments < CreateActiveAdminCommentsParent
  def self.up
    create_table :active_admin_comments, id: :uuid do |t|
      t.string :namespace, null: false
      t.text   :body, null: false
      t.references :resource, polymorphic: true, type: :uuid
      t.references :author, polymorphic: true, type: :uuid
      t.timestamps
    end
    add_index :active_admin_comments, [:namespace]
  end

  def self.down
    drop_table :active_admin_comments
  end
end
