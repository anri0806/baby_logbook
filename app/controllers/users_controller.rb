class UsersController < ApplicationController
    enable :sessions

    # Sign up
    #1. Frontend

    # Log in & log out
    #1. Create sessions controller
    #2. Create "/login" & "/logout"
    #3. Add validation in models

    post "/signup" do
        user = User.create(username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation])

        sessionp[:user_id] = user.id
        user.to_json
    end

    #  get "/babies" do
    #    babies = Baby.all
    #    babies.to_json(include: [:milestones, :appointments, :immunizations])
    #  end
   
    #  get "/babies/:id" do
    #    baby = Baby.find(params[:id])
    #    baby.to_json(include: [:milestones, :appointments, :immunizations])
   
    #  end

   
    #  patch "/babies/:id" do
    #    baby = Baby.find(params[:id])
    #    baby.update(name: params[:name], sex: params[:sex], baby_image_url: params[:baby_image_url], birthday: params[:birthday])
   
    #    baby.to_json
    #  end
   
    #  delete "/babies/:id" do
    #    baby = Baby.find(params[:id])
    #    baby.destroy
    #    baby.to_json
    #  end
   
   end
   
   