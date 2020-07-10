# typed: false
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
  def setup
    @team = teams(:one)
    @team.memberships.build(user: users(:one))
    @team.memberships.build(user: users(:two))
    @team.memberships.build(user: users(:three))
    @team.save!
  end

  test 'it finds matching participants' do
    subject = Session.new(team: @team,
                          date: Time.zone.today,
                          participations: [
                            Participation.new(user: users(:one)),
                            Participation.new(user: users(:two))
                          ])

    assert subject.matching_participants([users(:one), users(:two)])
    assert_not subject.matching_participants([users(:one), users(:three)])
    assert_not subject.matching_participants([users(:two), users(:three)])
    assert_not subject.matching_participants([users(:one), users(:two), users(:three)])
  end
end
