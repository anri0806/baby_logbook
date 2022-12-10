class UsersController < ApplicationController
    enable :sessions

    get "/users" do
        users = User.all
        users.to_json
    end

    post "/signup" do
        user = User.create(username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation])

        sessionp[:user_id] = user.id
        user.to_json
    end
   
   end
   
   