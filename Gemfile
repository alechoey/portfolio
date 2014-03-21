source 'http://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'rake', '0.9.2.2'
gem 'haml'
gem 'haml-rails'
gem 'less-rails'
gem 'therubyracer'
gem 'twitter-bootstrap-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :production do
  gem 'unicorn'
  gem 'pg'
  gem 'god'
end

group :development do
  gem 'sqlite3'
end

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end
