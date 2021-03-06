# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/devise-pwned_password/all/devise-pwned_password.rbi
#
# devise-pwned_password-0.1.8

module Devise
  def min_password_matches; end
  def min_password_matches=(obj); end
  def min_password_matches_warn; end
  def min_password_matches_warn=(obj); end
  def pwned_password_check_on_sign_in; end
  def pwned_password_check_on_sign_in=(obj); end
  def pwned_password_open_timeout; end
  def pwned_password_open_timeout=(obj); end
  def pwned_password_read_timeout; end
  def pwned_password_read_timeout=(obj); end
  def self.min_password_matches; end
  def self.min_password_matches=(obj); end
  def self.min_password_matches_warn; end
  def self.min_password_matches_warn=(obj); end
  def self.pwned_password_check_on_sign_in; end
  def self.pwned_password_check_on_sign_in=(obj); end
  def self.pwned_password_open_timeout; end
  def self.pwned_password_open_timeout=(obj); end
  def self.pwned_password_read_timeout; end
  def self.pwned_password_read_timeout=(obj); end
end
module Devise::Models
end
module Devise::Models::PwnedPassword
  def not_pwned_password; end
  def password_pwned?(password); end
  def pwned?; end
  def pwned_count; end
  extend ActiveSupport::Concern
end
module Devise::Models::PwnedPassword::ClassMethods
  def min_password_matches; end
  def min_password_matches=(value); end
  def min_password_matches_warn; end
  def min_password_matches_warn=(value); end
  def pwned_password_check_on_sign_in; end
  def pwned_password_check_on_sign_in=(value); end
  def pwned_password_open_timeout; end
  def pwned_password_open_timeout=(value); end
  def pwned_password_read_timeout; end
  def pwned_password_read_timeout=(value); end
  def self.available_configs; end
  def self.available_configs=(arg0); end
end
module Devise::PwnedPassword
end
class Devise::Mapping
  def pwned_password?; end
end
