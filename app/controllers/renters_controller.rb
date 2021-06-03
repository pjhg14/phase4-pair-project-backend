class RentersController < ApplicationController
    before_action :renter_logged_in?, only: [:show, :update]
    
    def show
        render json: @renter 
    end

    def create
        renter = Renter.new(renter_params)

        if renter.valid?
            renter.save
            render json: {name: renter.name, token: generate_token({renter_id: renter.id})}
        else
        render json: {error: "Cannot create renter"}
        end 
    end
    
    def update
        @renter.assign_attributes(renter_params)

        if @renter.valid?
            @renter.save 
            render json: {message: "update successful"}
        else
            render json: {message: "update failed", error: @renter.full_messages}
        end
    end

    def login
        renter = Renter.find_by(email: params[:email])

        if renter && renter.authenticate(params[:password])
            render json: {name: renter.name, token: generate_token({renter_id: renter.id})}
        else 
            render json: {message: "wrong email or password"}
        end
    end

    private

    def renter_params
        params.permit(:name, :password, :email, :phone)
    end
end
