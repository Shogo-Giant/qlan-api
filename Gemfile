source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'jbuilder'
gem 'mysql2'
gem 'puma'
gem 'rails'
gem 'bcrypt', '~> 3.1.7'
gem 'activerecord-import'
gem 'devise'
gem 'devise_token_auth'
gem 'rack-cors'
gem 'annotate'

group :development do
  gem 'listen'
  gem 'ridgepole'
  gem 'annotate'
  gem 'faker'
  gem 'pry-byebug'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
end