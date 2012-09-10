# Software Forest RoR gem file version 0.5

source 'https://rubygems.org'

gem 'rails', '3.2.7'
gem 'bootstrap-sass', '~> 2.0.4.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'thin'

# Use some authentication gems
gem 'devise' #login authentication 
gem 'cancan' #role-based user authorization
# Read & parse spreedsheets
gem 'roo'
# Give Haml support in all environments
gem 'haml'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'execjs'
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# gem 'activerecord-postgres-hstore'
  gem 'activerecord-postgres-hstore', git: 'git://github.com/softa/activerecord-postgres-hstore.git'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# group :development do
  gem 'haml-rails'
  gem 'hpricot'
  gem 'ruby_parser'
# end

group :test do
  gem 'factory_girl_rails', :require => false
  # gem 'growl'
  gem "spork"
  gem "guard"
  gem "guard-bundler"
  gem "guard-rspec"
  gem 'guard-spork'
  # gem 'spork-rails'
  #gem "launchy"
  gem 'database_cleaner'
end

group :development, :test do
  gem "rspec-rails", '~> 2.6'
  gem 'capybara'
  # gem 'capybara-webkit'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem "foreman", "~> 0.51.0"
end
