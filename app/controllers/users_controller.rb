class UsersController < ApplicationController
    

    get "/users" do
        users = User.all
        users.to_json
    end


    get "/users/:id" do
        User.find_by(id: params[:id]).to_json
    end
    

    get "/me" do
        user = User.find_by(id: session[:user_id])

        if user
            status 200
            user.to_json
        else
            status 404
            {error: "User not found" }.to_json
        end
    end

    post "/signup" do
        user = User.create(username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation])

        if user.valid?
            session[:user_id] = user.id
            status 200
            user.to_json
          else
            status 404
            {errors: user.errors.full_messages }.to_json
        end


    end

   
   end
   
   