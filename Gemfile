source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
gem 'devise'  
gem 'bcrypt', platforms: :ruby
gem 'jquery-rails'
gem 'best_in_place'
gem 'paperclip', '~> 5.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
# gem 'cocoon', :git => 'git://github.com/nathanvda/cocoon.git' for nested form in case
gem 'simple_form', '~> 3.5'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'font-awesome-rails'
gem 'bootstrap-wysihtml5-rails'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'impressionist' #for the number of impression on the show page to be counted
gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
gem 'capybara', '~> 2.13'
gem 'selenium-webdriver'


group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
