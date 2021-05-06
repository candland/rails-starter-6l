require "sidekiq/web"

# Turn off Sinatra's sessions, which overwrite the main Rails app's session
# after the first request

Sidekiq::Web.set :session_secret, Rails.application.credentials[:secret_key_base]
