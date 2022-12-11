class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
 
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

end
