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
    sessions.filter { |session| session.matching_participants(users) }.length
  end

  private

  sig { returns(T::Array[Session]) }
  def sessions
    @sessions ||= @team.sessions.includes(participations: :user).current(@days).to_a
  end
end
