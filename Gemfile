source "https://rubygems.org"

gem "rails", "~> 8.1.3", ">= 8.1.3.1"
gem "pg", "~> 1.1"
gem "puma", ">= 8.0.2"
gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "ruby-vips", "~> 2.0"

gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

gem "bootsnap", require: false
gem "kamal", require: false

gem "thruster", require: false
gem "image_processing", "~> 2.1"

gem "paranoia", ">= 2.1.5"
gem "jbuilder", ">= 2.7"

gem "redis", "~> 5.0"


group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false

  gem "rspec-rails", ">= 8.0.1"
  gem "shoulda-matchers", ">= 6.2"
  gem "factory_bot_rails", ">= 6.2"
  gem "faker", ">= 3.4.2"
  gem "webmock", ">= 3.23.1"
  gem "bullet", ">= 6.1"

  gem "dotenv-rails", ">= 2.1.1"

  gem "mock_redis", ">= 0.55.0"
end
