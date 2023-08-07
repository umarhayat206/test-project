# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.1'

# Use Puma as the app server
gem 'puma', '~> 5.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
gem 'httparty'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :test do
  gem 'simplecov', require: false
end

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner', '~> 2.0.1'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2.0'
  gem 'faker', '~> 2.19.0'
  gem 'rails-controller-testing', '~> 1.0.5'
  gem 'rspec-rails', '~> 5.1.0'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  # gem 'letter_opener', '~> 1.7.0'
end

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.2'

# gem 'devise', '~> 4.8.1'
# gem 'devise-jwt', '~> 0.9.0'

# Zip files for validation and adding metadata
# https://github.com/rubyzip/rubyzip
# gem 'rubyzip', '~> 1.2'
# For background and cron jobs
# gem 'sidekiq', '~> 6.4.1'
# gem 'whenever', require: false

# To allow nested indicators
# gem 'closure_tree', '~> 7.4.0'

# gem 'aws-sdk-s3', '~> 1.114'
