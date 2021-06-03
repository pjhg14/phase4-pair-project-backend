class AppointmentsController < ApplicationController
    # before_action :renter_logged_in?, only: [:create, :update]

    def create
        appointment = Appointment.new(appointment_params)

        if appointment.valid?
            appointment.save
            render json: {message: "Created appointment"}
        else
             render json: {error: "Cannot create appointment", details: appointment.errors.full_messages}
        end
    end

    def update
        appointment = Appointment.find(params[:id])
        appointment.assign_attributes(appointment_params)

        if appointment.valid?
            appointment.save
            render json: {message: "Update successful"}
        else
            render json: {error: "Cannot update appointment", details: appointment.errors.full_messages}
        end
    end
    
    def destroy
        appointment = Appointment.find(params[:id])
        appointment.destroy

        render json: {message: "Appointment has been canceled"}
    end
    
    private

    def appointment_params
        params.require(:appointment).require(:rental_id, :renter_id, :start_date, :end_date, :num_guests)
    end
    
end
