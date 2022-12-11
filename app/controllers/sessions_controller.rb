class SessionsController < ApplicationController
    

    post "/login" do
        user = User.find_by(username: params[:username])

        if user&.authenticate(params[:password])
            session[:user_id] = user.id   
            status 200
            user.to_json
        else
            status 404
            {error: "Incorrect username or password" }.to_json
        end
    end
   
    delete "/logout" do
        # session.delete :user_id
        session.clear
        session.to_json
    end
   
   end
   
   