# typed: false

# frozen_string_literal: true

class SessionsController < ApplicationController
  before_action :authenticate_user!

  def create
    session = Session.new(session_params)

    if session.save
      redirect_to root_path, flash: { notice: 'Added pairing session' }
    else
      redirect_to root_path, flash: { error: 'Failed to add pairing session' }
    end
  end

  private

  def session_params
    params.require(:session).permit(:team_id, :date, participations_attributes: [:user_id])
  end
end
