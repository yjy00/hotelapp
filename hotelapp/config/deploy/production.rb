server '3.115.181.127', user: 'hotelapp', roles: %w{app db web}

set :stage, :production
set :branch, "master"
set :rails_env, "production"

role :app, %w{USER_NAME@IP_ADDRESS}