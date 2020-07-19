# typed: strict
# frozen_string_literal: true

# == Schema Information
#
# Table name: slack_accounts
#
#  id         :uuid             not null, primary key
#  slack_team :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slack_id   :string           not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_slack_accounts_on_slack_id_and_slack_team  (slack_id,slack_team) UNIQUE
#  index_slack_accounts_on_user_id                  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class SlackAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
