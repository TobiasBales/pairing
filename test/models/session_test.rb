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

  test 'it allows only one session per pair, team and day' do
    Session.new(team: @team,
                date: Time.zone.today,
                participations: [
                  Participation.new(user: users(:one)),
                  Participation.new(user: users(:two))
                ]).save!
    subject = Session.new(team: @team,
                          date: Time.zone.today,
                          participations: [
                            Participation.new(user: users(:one)),
                            Participation.new(user: users(:two))
                          ])

    assert_not subject.valid?
  end

  test 'it allows one session per day' do
    Session.new(team: @team,
                date: Time.zone.today,
                participations: [
                  Participation.new(user: users(:one)),
                  Participation.new(user: users(:two))
                ]).save!
    subject = Session.new(team: @team,
                          date: Time.zone.today - 1.day,
                          participations: [
                            Participation.new(user: users(:one)),
                            Participation.new(user: users(:two))
                          ])

    assert subject.valid?
  end

  test 'it allows one session per day, per team' do
    Session.new(team: @team,
                date: Time.zone.today,
                participations: [
                  Participation.new(user: users(:one)),
                  Participation.new(user: users(:two))
                ]).save!
    subject = Session.new(team: teams(:two),
                          date: Time.zone.today,
                          participations: [
                            Participation.new(user: users(:one)),
                            Participation.new(user: users(:two))
                          ])

    assert subject.valid?
  end

  test 'it allows one session per day, per pair' do
    Session.new(team: @team,
                date: Time.zone.today,
                participations: [
                  Participation.new(user: users(:one)),
                  Participation.new(user: users(:two))
                ]).save!
    subject = Session.new(team: @team,
                          date: Time.zone.today,
                          participations: [
                            Participation.new(user: users(:one)),
                            Participation.new(user: users(:three))
                          ])

    assert subject.valid?
  end
end
