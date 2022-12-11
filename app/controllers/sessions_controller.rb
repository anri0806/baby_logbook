class SessionsController < ApplicationController
    
    ## Backend - login
    ## 1. Add new column to users :isLoggedIn
    ## 2. post "/login" => 1. find_by username, if authenticated,
    ## User.update(params....), status 200

    ## Frontend
    ## 1. add useState "isLoggedIn" to formData


    post "/login" do
        user = User.find_by(username: params[:username])

        if user&.authenticate(params[:password])
            # session[:user_id] = user.id   

            status 200
            user.to_json
        else
            {error: "Incorrect username or password" }.to_json
        end
    end
   
    delete "/logout" do
        # session.delete :user_id
        session.clear
    end
   
   end
   
   