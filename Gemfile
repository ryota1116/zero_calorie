source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.3'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# JSON形式のデータを簡単に作成する事が出来るgem
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'google-cloud-vision'
gem "google-cloud-storage", "~> 1.8", require: false

# UI/UX
gem 'rails-i18n'
# RailsでSEOの設定を行うGem
# gem 'meta-tags'
gem 'slim-rails'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # RSpecを高速化
  gem 'spring-commands-rspec'
  # テストコード
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  # コード解析
  gem 'brakeman', :require => false
  gem 'bullet'
  gem 'reek'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rails_best_practices'
  # デバッガー
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  # Table/Schema
  # 各モデルのスキーマ情報をファイルの先頭もしくは末尾にコメントとして書き出してくれるGem
  gem 'annotate'
  # resetしても、スキーマファイルのコメントを残してくれる
  gem 'migration_comments'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
