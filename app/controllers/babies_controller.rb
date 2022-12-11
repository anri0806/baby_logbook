class BabiesController < ApplicationController

 #####  Read, Create, Patch #####
 
  get "/babies" do
    babies = Baby.all
    babies.to_json(include: [:milestones, :appointments, :immunizations])
  end

  # // SET user associated baby
  # // BACKEND
  # // 1. create new routes - get "/user_baby_records/:id" in Baby controller
  # //    render baby <= user_id = (params[:id])

  # // 2. Add user_id upon adding baby


  get "/current_user_records/:id" do
    current_user_records = Baby.find_by(user_id: params[:id])

    current_user_records.to_json(include: [:milestones, :appointments, :immunizations])
  end


  get "/babies/:id" do
    baby = Baby.find(params[:id])
    baby.to_json(include: [:milestones, :appointments, :immunizations])

  end

  post "/babies" do
    baby = Baby.create(name: params[:name], sex: params[:sex], baby_image_url: params[:baby_image_url], birthday: params[:birthday])

    baby.to_json
  end

  patch "/babies/:id" do
    baby = Baby.find(params[:id])
    baby.update(name: params[:name], sex: params[:sex], baby_image_url: params[:baby_image_url], birthday: params[:birthday])

    baby.to_json
  end

  delete "/babies/:id" do
    baby = Baby.find(params[:id])
    baby.destroy
    baby.to_json
  end

end

