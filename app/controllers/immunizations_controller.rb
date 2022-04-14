class ImmunizationsController < ApplicationController

  
    post "/immunizations" do
      immunization = Immunization.create(vaccine: params[:vaccine], date: params[:date], baby_id: params[:baby_id])
  
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