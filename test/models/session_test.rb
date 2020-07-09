# typed: strict
# == Schema Information
#
# Table name: sessions
#
#  id         :uuid             not null, primary key
#  date       :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :uuid             not null
#
# Indexes
#
#  index_sessions_on_team_id  (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (team_id => teams.id)
#

# frozen_string_literal: true

require 'test_helper'

class SessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
