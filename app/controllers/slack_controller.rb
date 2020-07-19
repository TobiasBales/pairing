# typed: true
# frozen_string_literal: true

class SlackController < ApplicationController
  skip_forgery_protection

  def track_pairing
    TrackPairingCommand.new.execute(
      slack_id: T.cast(params[:user_id], String),
      response_url: T.cast(params[:response_url], String)
    )
    head :ok
  end
end