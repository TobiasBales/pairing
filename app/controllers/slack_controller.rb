# typed: true
# frozen_string_literal: true

class SlackController < ApplicationController
  skip_forgery_protection

  extend T::Sig

  def pairing
    PairingCommand.for(message: message_from_params(params)).execute

    head :ok
  end

  private

  sig { params(params: ActionController::Parameters).returns(SlackMessage) }
  def message_from_params(params)
    SlackMessage.new(
      message: T.cast(params[:text], String),
      sender: T.cast(params[:user_id], String),
      response_url: T.cast(params[:response_url], String)
    )
  end
end
