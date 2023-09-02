# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

# Rails 7
gem "rails", "~> 7.0.7", ">= 7.0.7.2"

# For asset pipeline
gem "sprockets-rails"

# Postgresql driver
gem "pg", "~> 1.1"

# Web server
gem "puma", "~> 6.3"

# Use import maps
gem "importmap-rails"

# Use Turbo
gem "turbo-rails"

# Stimulus Framework
gem "stimulus-rails"

# JSON Builder
gem "jbuilder"

# Redis
gem "redis", "~> 4.8.1", "< 5"
gem "redis-rails"

# Create password hash
# gem "bcrypt", "~> 3.1.7"

# Timezone for Windows
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching
gem "bootsnap", require: false

# Use Sass to process CSS
gem "dartsass-rails"
gem "sassc-rails"

# Use Active Storage variants
gem "image_processing", "~> 1.2"

# for localize
gem "i18n_generators"
gem "rails-i18n"

# for read .env
# gem "dotenv-rails"

# for discord oauth2
# gem "omniauth-discord"

# for google oauth2
# gem "omniauth-google-oauth2"

# for github oauth2
# gem "omniauth-github"

# csrf protection for omniauth
# gem "omniauth-rails_csrf_protection"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "brakeman"
  gem "bundler-audit"
  gem "debug", "1.8.0", platforms: %i[mri mingw x64_mingw]
  gem "rspec-rails"
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-rspec"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
