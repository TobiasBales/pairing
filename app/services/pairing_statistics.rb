# typed: strict

# frozen_string_literal: true

class PairingStatistics
  extend T::Sig

  sig { params(team: Team, days: Integer).void }
  def initialize(team, days)
    @team = team
    @days = days
    @sessions = T.let(nil, T.nilable(T::Array[Session]))
  end

  sig { params(users: T::Array[User]).returns(T::Boolean) }
  def paired?(users)
    sessions.any? { |session| session.matching_participants(users) }
  end

  sig { params(users: T::Array[User]).returns(Numeric) }
  def number_of_sessions_for(users)
    sessions.count { |session| session.matching_participants(users) }
  end

  sig { returns(Integer) }
  def maximum_sessions
    sessions_by_users.values.map(&:length).max || 0
  end

  private

  sig { returns(T::Array[Session]) }
  def sessions
    @sessions ||= @team.sessions.includes(participations: :user).current(@days).to_a
  end

  sig { returns(T::Hash[T::Array[String], T::Array[Session]]) }
  def sessions_by_users
    sessions.group_by { |s| s.participations.map(&:user_id).sort }
  end
end
