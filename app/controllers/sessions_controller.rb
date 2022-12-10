class SessionsController < ApplicationController
    enable :sessions


    post "/login" do
        user = User.find_by(username: params[:username])

        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            user.to_json
        else
            {error: "Incorrect username or password" }.to_json
        end
    end
   
    delete "/logout" do
        session.delete :user_id
    end
   
   end
   
   