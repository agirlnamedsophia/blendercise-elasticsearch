source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

gem 'asset_sync'
gem 'aws-sdk'
gem 'cancan'
gem 'chewy'
gem 'chosen-rails'
gem 'compass-rails'
gem 'devise'
gem 'dragonfly', '~>1.0.0'
gem 'forgery'
gem 'jquery-rails'
gem 'kaminari'
gem 'nested_form'
gem 'pg'
gem 'rack-cache', require: 'rack/cache'
gem 'sass-rails', '~> 4.0.0'
gem 'simple_form'
gem 'slim-rails'
gem 'tinymce-rails', git: 'git://github.com/spohlenz/tinymce-rails.git', branch: 'tinymce-4'
gem 'uglifier', '>= 1.3.0'
gem 'unf' # This is required for security by asset_sync


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'bullet'
  # gem 'capistrano',  '~> 3.0.0'
  # gem 'capistrano-bundler'
  # gem 'capistrano-rails'
  gem 'quiet_assets'
  #gem 'rack-livereload'
  # gem 'rb-fsevent', require: false if RUBY_PLATFORM =~ /darwin/i
  gem 'spring'
  gem 'thin'
end

group :development, :test do
  gem 'annotate'
  gem 'capybara'
  gem 'database_cleaner', git: 'git://github.com/bmabey/database_cleaner.git'
  gem 'factory_girl_rails'
  gem 'guard-annotate'
  gem 'guard-bundler'
  #gem 'guard-livereload'
  gem 'guard-rspec', require: false
  #gem 'launchy' # To open the rspec output in an HTML file.
  gem 'rspec-rails', '~> 2.0'
end

group :production, :stage do
  gem 'daemons'
  gem 'dalli'
  gem 'dragonfly-s3_data_store'
  gem 'exception_notification'
  gem 'fog'
  gem 'therubyracer', platforms: :ruby
  gem 'whenever', require: false
end
