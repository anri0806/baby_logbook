class MilestonesController < ApplicationController

  ####### Create, Update, Delete #######

  post "/milestones" do
    milestone = Milestone.create(development: params[:development], notes: params[:notes], baby_id: params[:baby_id])

    milestone.to_json
  end

  patch "/milestones/:id" do
    milestone = Milestone.find(params[:id])
    milestone.update(development: params[:development], notes: params[:notes])

    milestone.to_json
  end

  delete "/milestones/:id" do
    milestone = Milestone.find(params[:id])
    milestone.destroy
    milestone.to_json
  end

end