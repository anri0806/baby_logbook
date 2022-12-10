class UsersController < ApplicationController
    enable :sessions

    get "/users" do
        users = User.all
        users.to_json
    end

    get "/me" do
        user = User.find_by(id: session[:user_id])
        if user
            user.to_json
        else
            {error: "User not found" }.to_json
        end
    end

    post "/signup" do
        user = User.create(username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation])

        sessionp[:user_id] = user.id
        user.to_json
    end
   
   end
   
   