class HostsController < ApplicationController
    before_action :host_logged_in?, only: [:show, :update]
    
    def show
        render json: @host 
    end

    def create
        host = Host.new(host_params)

        if host.valid?
            host.save
            render json: {name: host.name, token: generate_token({host_id: host.id})}
        else
        render json: {error: "Cannot create host"}
        end 
    end
    
    def update
        @host.assign_attributes(host_params)

        if @host.valid?
            @host.save 
            render json: {message: "update successful"}
        else
            render json: {message: "update failed", error: @host.full_messages}
        end
    end

    def login
        host = Host.find_by(email: params[:email])

        if host && host.authenticate(params[:password])
            render json: {name: host.name, token: generate_token({host_id: host.id})}
        else 
            render json: {error: "WRONG EMAIL OR PASSWORD!"}
        end
    end

    private

    def host_params
        params.permit(:name, :password, :email, :phone, :about)
    end
   
end
