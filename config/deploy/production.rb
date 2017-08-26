set :app_eip, "52.192.246.118"

role :app, "admin@#{fetch(:app_eip)}"
role :web, "admin@#{fetch(:app_eip)}"
role :db,  "admin@#{fetch(:app_eip)}"
