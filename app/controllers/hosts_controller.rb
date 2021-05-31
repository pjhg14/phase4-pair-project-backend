class HostsController < ApplicationController
    # skip_before_action :logged_In?, only: [:create, :login]
    before_action :host_loggin_in?, only: [:show]
    
    def show
        host = Host.find(params[:id])
        render json: @host 
    end

    def create
        host = Host.new(host_params)

        if host.valid?
            host.save
            render json: host
        else
        render json: {error: "Cannot create host"}
        end 
    end
    
    def login
        host = Host.find_by(email: params[:email])

        if host && host.authenticate(params[:password])
            render json: {name: host.name, token: generate_token({host_id: host.id})}
        else 
            render json: {message: "wrong email or password"}
        end
    end


    def host_params
        params.permit(:name, :password, :email, :phone, :about)
    end
end
