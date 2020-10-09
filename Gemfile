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
# capistranoでdeployのエラーに対応
gem 'mini_racer', platforms: :ruby
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# gem 'active_decorator'

# Authentication
gem 'sorcery'
# S3に必要
gem 'aws-sdk-s3', require: false

# Use Active Storage variant
gem 'image_processing', '~> 1.2'
# GCP
# ggsいらないのでは
# gem 'google-cloud-storage', '~> 1.8', require: false
gem 'google-cloud-vision'

# UI/UX
gem 'bootstrap-sass'
# semantic UI Framework
gem 'semantic-ui-sass'
# 国際化
gem 'rails-i18n'
# ページネーション
gem 'kaminari'
# RailsでSEOの設定を行うGem
# gem 'meta-tags'
gem 'html2slim'
gem 'slim-rails'
# 定数管理
gem 'config'
# slack通知
gem 'exception_notification'
gem 'slack-notifier'
# ひらがな、カタカナ、漢字、ローマ字を相互変換するgem
gem 'miyabi'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # RSpecを高速化
  gem 'spring-commands-rspec'
  # テストコード
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop-rspec', require: false
  # コード解析
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'rails_best_practices'
  gem 'reek'
  gem 'rubocop'
  gem 'rubocop-rails'
  # デバッガー
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'

  # Table/Schema
  # 各モデルのスキーマ情報をファイルにコメントとして書き出してくれる
  gem 'annotate'
  # resetしても、スキーマファイルのコメントを残してくれる
  gem 'migration_comments'
end

group :development do
  gem 'bcrypt_pbkdf'
  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-bundler'
  gem 'capistrano-nginx'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-yarn'
  gem 'ed25519'
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  # https://blog.takeru08ma.com/2019/08/20/post-616/
  gem 'codecov', require: false

  gem 'simplecov', require: false
  # https://qiita.com/tetsuya/items/83e18713928d0b4bcc41
  gem 'rspec_junit_formatter'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
