# typed: false

# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @team = teams(:one)
  end

  test 'it shows there was a pairing for one day' do
    @team.build_session([users(:one), users(:two)], Time.zone.today).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:three)], Time.zone.today - 1.day).save!
    subject = PairingStatistics.new(@team, 1)

    assert subject.paired?([users(:one), users(:two)])
    assert_not subject.paired?([users(:one), users(:three)])
    assert_not subject.paired?([users(:two), users(:three)])
  end

  test 'it shows there was a pairing for multiple days' do
    @team.build_session([users(:one), users(:two)], Time.zone.today).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:three)], Time.zone.today - 1.day).save!
    subject = PairingStatistics.new(@team, 2)

    assert subject.paired?([users(:one), users(:two)])
    assert subject.paired?([users(:one), users(:three)])
    assert_not subject.paired?([users(:two), users(:three)])
  end

  test 'it gives the correct number of pairing sessions for one day' do
    @team.build_session([users(:one), users(:two)], Time.zone.today).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:three)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 2.days).save!
    subject = PairingStatistics.new(@team, 1)

    assert_equal 1, subject.number_of_sessions_for([users(:one), users(:two)])
    assert_equal 0, subject.number_of_sessions_for([users(:one), users(:three)])
    assert_equal 0, subject.number_of_sessions_for([users(:two), users(:three)])
  end

  test 'it gives the correct number of pairing sessions for multiple days' do
    @team.build_session([users(:one), users(:two)], Time.zone.today).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:three)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 2.days).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 3.days).save!
    subject = PairingStatistics.new(@team, 2)

    assert_equal 2, subject.number_of_sessions_for([users(:one), users(:two)])
    assert_equal 1, subject.number_of_sessions_for([users(:one), users(:three)])
    assert_equal 0, subject.number_of_sessions_for([users(:two), users(:three)])
  end

  test 'it gives the correct number of maximum sessions for one day' do
    @team.build_session([users(:one), users(:two)], Time.zone.today).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:three)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 2.days).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 3.days).save!
    subject = PairingStatistics.new(@team, 1)

    assert_equal 1, subject.maximum_sessions
  end

  test 'it gives the correct number of maximum sessions for multiple days' do
    @team.build_session([users(:one), users(:two)], Time.zone.today).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:three)], Time.zone.today - 1.day).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 2.days).save!
    @team.build_session([users(:one), users(:two)], Time.zone.today - 3.days).save!
    subject = PairingStatistics.new(@team, 2)

    assert_equal 2, subject.maximum_sessions
  end
end
