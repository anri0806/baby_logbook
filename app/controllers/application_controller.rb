class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
 
  configure do
    set :sessions, true
    set :session_secret, "secret"
  end

end
