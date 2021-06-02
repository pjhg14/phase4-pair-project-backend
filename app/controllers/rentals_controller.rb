class RentalsController < ApplicationController
    # before_action :host_loggin_in?, only: [:create, :update]


    def index
        rentals = Rental.all
        render json: rentals 
    end

    def show
        rental = Rental.find(params[:id])
        render json: rental
    end

    def create
        rental = Rental.new(rental_params)
        if rental.valid?
            rental.save 
            render json: rental 
        else
            render json: {error: "Unable to create rental", details: rental.errors.full_messages }
        end
    end

    def update
        
        rental = Rental.find(params[:id])
        rental.assign_attributes(rental_params)
        if rental.valid?
            rental.save 
            render json: rental 
        else
            render json: {error: "Unable to update rental", details: rental.errors.full_messages }
        end
    end

    def destroy
        rental = Rental.find(params[:id])
        rental.destroy
        render json: {message: "Rental has been deleted"}
    end

    private

    def rental_params
        params.require(:rental).permit(:host_id, :cost, :address, :max_guests, :description, :image)
    end

end
