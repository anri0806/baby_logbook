class BabiesController < ApplicationController

 #####  Read, Create, Patch #####
 
  get "/babies" do
    babies = Baby.all
    babies.to_json(include: [:milestones, :appointments, :immunizations])
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

end