# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0', '>= 6.0.3.2'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'cocoon', '~> 1.2'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.4', '>= 1.4.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.1'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'web-console', '~> 4.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.1'
  gem 'spring-watcher-listen', '~> 2.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.33'
  gem 'selenium-webdriver', '~> 3.142'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers', '~> 4.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 1.2', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'activeadmin', '~> 2.7'
gem 'bcrypt', '~> 3.1'
gem 'devise', '~> 4.7'
gem 'devise-bootstrapped', github: 'king601/devise-bootstrapped', branch: 'bootstrap4'
gem 'devise-pwned_password', '~> 0.1.8'
gem 'gravatar_image_tag', '~> 1.2'
gem 'hiredis', '~> 0.6.3'
gem 'pg', '~> 1.2'
gem 'redis', '~> 4.2'
gem 'sidekiq', '~> 6.1'
gem 'sidekiq-statistic', '~> 1.4'
group :development, :test do
  gem 'guard', '~> 2.16'
  gem 'guard-minitest', '~> 2.4'
  gem 'terminal-notifier-guard', '~> 1.7'
end

group :development, :test do
  gem 'bullet', '~> 6.1'
end

group :development do
  gem 'database_consistency', '~> 0.8.4'
end

gem 'strong_migrations', '~> 0.6.8'
group :development do
  gem 'annotate', '~> 3.1'
end

group :development do
  gem 'rails_best_practices', '~> 1.20'
end

group :development, :test do
  gem 'fasterer', '~> 0.8.3'
end

group :development do
  gem 'bundler-audit', '~> 0.7.0'
end

group :development do
  gem 'brakeman', '~> 4.8'
end

gem 'pghero', '~> 2.5'
group :development do
  gem 'better_errors', '~> 2.7'
  gem 'binding_of_caller', '~> 0.8.0'
end

group :development, :test do
  gem 'pronto', '~> 0.10.0'
  gem 'pronto-brakeman', '~> 0.10.0'
  gem 'pronto-bundler_audit', '~> 0.6.0'
  gem 'pronto-eslint_npm', '~> 0.10.1'
  gem 'pronto-fasterer', '~> 0.10.0'
  gem 'pronto-json', '~> 0.1.5'
  gem 'pronto-rails_best_practices', '~> 0.10.0'
  gem 'pronto-rails_schema', '~> 0.10.0'
  gem 'pronto-rubocop', '~> 0.10.0'
  gem 'pronto-shellcheck', '~> 0.1.4'
  gem 'pronto-sorbet', '~> 0.2.0'
  gem 'pronto-stylelint', '~> 0.10.0'
end

gem 'marginalia', '~> 1.8'
group :development, :test do
  gem 'rubocop', '~> 0.87.1'
  gem 'rubocop-minitest', '~> 0.9.0'
  gem 'rubocop-performance', '~> 1.7'
  gem 'rubocop-rails', '~> 2.6'
end

group :development, :test do
  gem 'sorbet', '~> 0.5.5808'
end

gem 'cancancan', '~> 3.1'
gem 'guard-sorbet', '~> 0.5.0'
gem 'pundit', '~> 2.1'
gem 'sorbet-rails', '~> 0.7.0'
gem 'sorbet-runtime', '~> 0.5.5803'
group :development, :test do
  gem 'rubocop-sorbet', '~> 0.4.0'
end

group :development do
  gem 'strong_versions', '~> 0.4.4'
end
