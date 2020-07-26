# typed: true
# frozen_string_literal: true

class SlackController < ApplicationController
  skip_forgery_protection

  def pairing
    PairingCommand.for(
      message: T.cast(params[:text], String),
      slack_id: T.cast(params[:user_id], String),
      response_url: T.cast(params[:response_url], String)
    ).execute
    head :ok
  end
end
