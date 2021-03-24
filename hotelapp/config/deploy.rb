# config valid only for current version of Capistrano
# capistranoのバージョンを記載。固定のバージョンを利用し続け、バージョン変更によるトラブルを防止する
lock '3.16.0'

# Capistranoのログの表示に利用する
set :application, 'hotelapp'

# どのリポジトリからアプリをpullするかを指定する
set :repo_url,  'git@github.com:yjy00/hotelapp.git'

# バージョンが変わっても共通で参照するディレクトリを指定
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '3.0.0'

# どの公開鍵を利用してデプロイするか
set :ssh_options, auth_methods: ['publickey'], keys: ['~/.ssh/hotelapp05.pem'] 

set :keep_releases, 5