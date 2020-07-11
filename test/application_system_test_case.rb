# typed: strict
# frozen_string_literal: true

require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  def self.driver
    ENV['SELENIUM_DRIVER'].to_sym if ENV['SELENIUM_DRIVER'].present?

    :headless_chrome
  end

  driven_by :selenium, using: driver, screen_size: [1400, 1400]
end
