# typed: true
# frozen_string_literal: true

module Users
  class SlackAccountsController < ApplicationController
    def destroy
      current_user.slack_accounts.find(params[:id]).destroy!

      redirect_to edit_user_registration_path(current_user)
    end
  end
end
