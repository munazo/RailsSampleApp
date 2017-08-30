set :app_eip, "52.69.225.213"

role :app, "admin@#{fetch(:app_eip)}"
role :web, "admin@#{fetch(:app_eip)}"
role :db,  "admin@#{fetch(:app_eip)}"
