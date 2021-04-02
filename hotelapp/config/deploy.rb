# config valid for current version and patch releases of Capistrano
lock "3.15.0"

set :application, "hotelapp"
set :repo_url, "git@github.com:yjy00/hotelapp.git"

set :deploy_to, "/var/www/rails/hotelapp/hotelapp"

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '3.0.0'

# どの公開鍵を利用してデプロイするか
set :ssh_options, auth_methods: ['publickey'], keys: ['~/.ssh/hotelapp05.pem']

# # デプロイ処理が終わった後、Unicornを再起動するための記述
# after 'deploy:publishing', 'deploy:restart'
# namespace :deploy do
#   task :restart do
#     invoke 'puma:restart'
#   end
# end

# ソケットの場所、Nginxとのやり取りに必要
set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"
# サーバー状態を表すファイルの場所
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
# プロセスを表すファイルの場所
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
# ログの場所
set :puma_access_log, "#{shared_path}/log/puma.error.log"
set :puma_error_log, "#{shared_path}/log/puma.access.log"

# タスクでsudoなどを行う際に必要
set :pty, true
# シンボリックリンクのファイルを指定、具体的にはsharedに入るファイル
append :linked_files, "config/master.key"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
