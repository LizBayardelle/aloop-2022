source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"
gem "rails", "~> 7.0.1"

# THE PRESETS
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
# gem "sassc-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

# OTHER NECESSARY STUFF
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'bcrypt', '~> 3.1.7'
gem 'gon'
gem 'sass-rails'

# ESSENTIALS
gem 'devise'
gem 'simple_form'
gem 'bootstrap', '~> 5.1', '>= 5.1.3'
gem 'friendly_id', '~> 5.2.0'
gem 'invisible_captcha'
gem 'figaro'
gem 'high_voltage', '~> 3.1'

# STYLE STUFF
gem 'font_awesome5_rails'
gem 'tinymce-rails'


# FOR PAYMENTS
gem 'stripe-rails'
gem 'paypal-sdk-rest'
gem "money-rails"

# FOR IMAGES
gem 'mini_magick'
gem 'aws-sdk' , '~> 3'
gem 'aws-sdk-s3', require: false


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'better_errors'
end

group :development do
  gem "web-console"
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
