class AppointmentsController < ApplicationController

    
    get "/appointments" do
      appointments = Appointment.all
      appointments.to_json
    end


    post "/babies/:baby_id/appointments" do
      baby = Baby.find_by(id: params[:baby_id])
      appointment = baby.appointments.create(date: params[:date], time: params[:time], doctor_name: params[:doctor_name], notes: params[:notes])
  
      appointment.to_json
    end
  
    patch "/appointments/:id" do
      appointment = Appointment.find(params[:id])
      appointment.update(date: params[:date], time: params[:time], doctor_name: params[:doctor_name], notes: params[:notes])
  
      appointment.to_json
    end
  
    delete "/appointments/:id" do
      appointment = Appointment.find(params[:id])
      appointment.destroy
      appointment.to_json
    end
  
  end