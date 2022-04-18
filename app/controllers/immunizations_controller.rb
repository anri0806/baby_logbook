class ImmunizationsController < ApplicationController

    get "/immunizations" do
      immunizations = Immunization.all
      immunizations.to_json
    end
  
    post "/babies/:baby_id/immunizations" do
      baby = Baby.find_by(id: params[:baby_id])
      immunization = baby.immunizations.create(vaccine: params[:vaccine], date: params[:date])
  
      immunization.to_json
    end
  
    patch "/immunizations/:id" do
      immunization = Immunization.find(params[:id])
      immunization.update(vaccine: params[:vaccine], date: params[:date])
  
      immunization.to_json
    end
  
    delete "/immunizations/:id" do
      immunization = Immunization.find(params[:id])
      immunization.destroy
      immunization.to_json
    end
  
  end