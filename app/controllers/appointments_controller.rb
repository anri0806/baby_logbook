class AppointmentsController < ApplicationController


    post "/appointments" do
      appointment = Appointment.create(date: params[:date], time: params[:time], doctor_name: params[:doctor_name], notes: params[:notes], baby_id: params[:baby_id])
  
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