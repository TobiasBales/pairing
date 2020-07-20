# typed: true
# frozen_string_literal: true

class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @teams = @user.teams
    @has_no_slack_account = current_user.slack_accounts.empty?
  end
end
