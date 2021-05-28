class HostsController < ApplicationController
    # skip_before_action :logged_In?, only: [:create, :login]

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
            render json: {name: host.name, token: JWT.encode({host_id: host.id}, "Flatiron", "HS256")}
        else 
            render json: {message: "wrong email or password"}
        end
    end

    def host_params
        params.permit(:name, :password, :email, :phone, :about)
    end
end
