source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails',         '~> 5.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma',          '~> 3.11'
gem 'sass-rails',    '~> 5.0'
gem 'uglifier',      '>= 1.3.0'
gem 'coffee-rails',  '~> 4.2'
gem 'turbolinks',    '~> 5'
gem 'jbuilder',      '~> 2.5'
gem 'bootsnap',      '>= 1.1.0', require: false
gem 'jquery-rails'
gem 'simple_form'
gem 'font-awesome-rails'

group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_bot_rails'
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do

  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'popper_js', '~> 1.11.1'
gem 'bootstrap', '4.0.0.alpha6'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end