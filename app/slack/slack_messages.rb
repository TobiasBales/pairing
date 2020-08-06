# typed: strict
# frozen_string_literal: true

class SlackMessages
  extend T::Sig
  include GeneratedUrlHelpers

  sig { params(initiator: SlackAccount, partner: SlackAccount).returns(String) }
  def pairing_recorded(initiator:, partner:)
    message('pairing_recorded', { initiator: initiator.slack_name, partner: partner.slack_name })
  end

  sig { params(errors: String).returns(String) }
  def failed_to_save_session(errors:)
    message('failed_to_save_session', { errors: errors })
  end

  sig { params(partner: String).returns(String) }
  def not_same_team(partner:)
    message('not_same_team', { partner: partner })
  end

  sig { returns(String) }
  def initiator_has_no_slack_account
    message('initiator_has_no_slack_account', { link: user_slack_omniauth_authorize_url })
  end

  sig { params(partner: String).returns(String) }
  def partner_has_no_slack_account(partner:)
    message('partner_has_no_slack_account', { partner: partner, link: user_slack_omniauth_authorize_url })
  end

  sig { returns(String) }
  def no_team
    message('no_team', { link: new_team_url })
  end

  sig { returns(String) }
  def unknown_command
    message('unknown_command')
  end

  private

  sig { params(key: String, params: T::Hash[Symbol, String]).returns(String) }
  def message(key, params = {})
    I18n.t!("slack.messages.#{key}", params)
  end
end
