class MilestonesController < ApplicationController

  ####### Create, Update, Delete #######

  get "/milestones" do
    milestones = Milestone.all
    milestones.to_json
  end

  post "/babies/:baby_id/milestones" do
    baby = Baby.find_by(id: params[:baby_id])
    milestone = baby.milestones.create(development: params[:development], date: params[:date], notes: params[:notes])

    milestone.to_json
  end


  delete "/milestones/:id" do
    milestone = Milestone.find(params[:id])
    milestone.destroy
    milestone.to_json
  end

end