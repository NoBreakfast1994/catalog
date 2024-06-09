# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.2'

group :development do
  gem 'annotate'
  gem 'brakeman'
  gem 'database_consistency', require: false
  gem 'rack-mini-profiler'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
  gem 'rubocop', require: false
  gem 'rubocop-capybara', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'standard'
  gem 'standard-rails'
end

gem 'activerecord-enhancedsqlite3-adapter'
gem 'bootsnap', require: false
gem 'database_validations'
gem 'devise'
gem 'discard'
gem 'groupdate'
gem 'image_processing', '~> 1.2'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.3', '>= 7.1.3.3'
gem 'simple_form'
gem 'sqlite3', '~> 1.4'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[jruby windows]
gem 'vite_rails'
