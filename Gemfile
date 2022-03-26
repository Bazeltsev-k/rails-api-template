source "https://rubygems.org"

ruby "3.1.1"

gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem "mysql2", "~> 0.5"
gem "puma", "~> 5.0"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

group :development, :test do
  gem "rubocop"
  gem "factory_bot"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :test do
  gem "rspec-rails"
end

