# typed: strict
# frozen_string_literal: true

class ApplicationController < ActionController::Base
  extend T::Sig
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  sig { void }
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
