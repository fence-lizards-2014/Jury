source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '3.2.18'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'clearance'

gem "omniauth-google-oauth2", "~> 0.2.1"
gem 'whenever'

gem 'i18n'

gem 'simplecov', :require => false, :group => :test

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby'

gem 'pry'
gem 'debugger'

group :development, :test do
  gem 'rspec-rails', '=2.14'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'metric_fu'
  gem 'simplecov'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end

group :production do
	gem 'unicorn'
	gem 'rails_12factor'
end


# Deploy with Capistrano
# gem 'capistrano'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

