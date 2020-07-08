# frozen_string_literal: true

EnableUuidParent = ActiveRecord::Migration[6.0]
class EnableUuid < EnableUuidParent
  def change
    enable_extension 'pgcrypto'
  end
end
