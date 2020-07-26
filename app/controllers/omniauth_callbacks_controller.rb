# typed: true
# frozen_string_literal: true

class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  before_action :authenticate_user!
  before_action :build_slack_account, only: [:slack]

  def slack
    if info['error'].present?
      redirect_to root_path, flash: { error: "Error linking to slack: #{info['error']}" }
      return
    end

    if @account.save
      redirect_to root_path, flash: { notice: "Successfully linked to you #{slack_team} slack account" }
    else
      redirect_to root_path, flash: { error: "Error linking to slack: #{@account.errors.full_messages.join}" }
    end
  end

  private

  def get_slack_name(access_token, slack_id)
    response = HttpClient.instance.get("https://slack.com/api/users.info?token=#{access_token}&user=#{slack_id}")
    response.body['user']['name']
  end

  def build_slack_account
    @account = current_user.slack_accounts.build(
      slack_id: slack_id,
      slack_name: get_slack_name(access_token, slack_id),
      slack_team: slack_team
    )
  end

  def slack_id
    info['authed_user']['id']
  end

  def access_token
    info['access_token']
  end

  def slack_team
    info['team']['name']
  end

  def info
    request.env['omniauth.auth']['info']
  end
end
