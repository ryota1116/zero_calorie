# config valid for current version and patch releases of Capistrano
# capistranoのバージョン
lock '~> 3.14.1'
# アプリケーション名
set :application, 'zero_calorie'
# cloneするgitのリポジトリ
set :repo_url, 'git@github.com:ryota1116/zero_calorie.git'

set :branch, ENV['BRANCH'] || 'master'
# デプロイ関連ユーザの設定
set :user, 'ryota'
# デプロイ先のディレクトリ
set :deploy_to, '/var/www/zero_calorie'
# linked_filesやlinked_dirsに設定したものに対してはシンボリックリンクが張られる
set :linked_files, %w[config/master.key config/credentials/production.key config/database.yml]
set :linked_dirs, %w[log tmp/pids tmp/cache tmp/sockets public/system vendor/bundle]
# append :linked_files, 'config/credentials/production.key'

# rubyのバージョン
set :rbenv_ruby, File.read('.ruby-version').strip
set :puma_threds, [4, 16]
set :puma_workers, 0
set :puma_bind, 'unix:///var/www/zero_calorie/shared/tmp/sockets/puma.sock'
set :puma_state, '/var/www/zero_calorie/shared/tmp/pids/puma.state'
set :puma_pid, '/var/www/zero_calorie/shared/tmp/pids/puma.pid'
# 出力するログレベル
set :puma_access_log, '/var/www/zero_calorie/shared/log/puma.error.log'
set :puma_error_log, '/var/www/zero_calorie/shared/log/puma.access.log'
set :puma_preload_app, true

namespace :puma do
  desc 'Create Directories for Puma Pids and Socket'
  task :make_dirs do
    on roles(:app) do
      execute 'mkdir /var/www/zero_calorie/shared/tmp/sockets -p'
      execute 'mkdir /var/www/zero_calorie/shared/tmp/pids -p'
    end
  end

  before :start, :make_dirs
end

namespace :deploy do
  desc 'upload important files'
  task :upload do
    on roles(:app) do
      sudo :mkdir, '-p', '/var/www/zero_calorie/shared/config'
      sudo %(chown -R #{fetch(:user)}.#{fetch(:user)} /var/www/#{fetch(:application)})
      sudo :mkdir, '-p', '/etc/nginx/sites-enabled'
      sudo :mkdir, '-p', '/etc/nginx/sites-available'

      upload!('config/database.yml', '/var/www/zero_calorie/shared/config/database.yml')
      upload!('config/master.key', '/var/www/zero_calorie/shared/config/master.key')
    end
  end

  desc 'Create database'
  task :db_create do
    on roles(:db) do
      with rails_env: fetch(:rails_env) do
        within release_path do
          execute :bundle, :exec, :rake, 'db:create'
        end
      end
    end
  end

  before :starting, :upload
  before 'check:linked_files', 'puma:nginx_config'
end

after 'deploy:published', 'nginx:restart'
before 'deploy:migrate', 'deploy:db_create'
