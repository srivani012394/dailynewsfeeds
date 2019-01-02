# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.2.1'
gem 'haml'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'

gem 'mysql2', '>= 0.4.4', '< 0.6.0'

gem 'sass-rails', '~> 5.0'

gem 'redis'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# gems added by me
gem 'jquery-rails'
gem 'rubocop', require: false
gem 'seed_migration'
gem 'sidekiq'
gem 'sidekiq-cron'
gem 'watir', '~> 6.16', '>= 6.16.5'

# #################################################
group :development, :test do
  gem 'pry'
end

group :development do
  gem 'letter_opener_web', '~> 1.0'

  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 2.15'
  # gem 'selenium-webdriver'
  # # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
end
