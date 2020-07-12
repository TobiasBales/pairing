# typed: strict
# frozen_string_literal: true

require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  extend T::Sig

  sig { returns(Symbol) }
  def self.driver
    T.must(ENV['SELENIUM_DRIVER']).to_sym if ENV['SELENIUM_DRIVER'].present?

    :headless_chrome
  end

  driven_by :selenium, using: driver, screen_size: [1400, 1400]
end
