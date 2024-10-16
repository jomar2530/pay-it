source "https://rubygems.org"

gem "rails", "~> 8.0.0.alpha", github: "rails/rails", branch: "main"
gem "sprockets-rails"
gem "mysql2", "~> 0.5"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", ">= 4.0.1"
gem "tzinfo-data", platforms: %i[mswin mswin64 mingw x64_mingw jruby]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[mswin mswin64 mingw x64_mingw jruby]
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
  gem "spring"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers", "~> 5.3", ">= 5.3.1"
end

group :development, :test do
  gem "byebug", "~> 11.1", ">= 11.1.3"
  gem "rspec-rails", "~> 6.1"
end
