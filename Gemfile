source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.19'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

gem 'devise'
gem 'doorkeeper'
gem 'doorkeeper-grants_assertion', github: "doorkeeper-gem/doorkeeper-grants_assertion", branch: "master"
gem 'paperclip'
gem 'kaminari'
gem 'active_model_serializers', '~> 0.10.3'
gem 'open_uri_redirections'


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'better_errors'
  gem 'fuubar'
  gem 'rubycritic', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-coolline'
  gem 'pry-stack_explorer'
  gem 'pry-rescue'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Use Capistrano for deployment
  gem 'capistrano-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
