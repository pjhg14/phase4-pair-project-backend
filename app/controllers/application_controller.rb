class ApplicationController < ActionController::API

    def generate_token(payload)
        JWT.encode(payload, "todo")
    end

    def host_logged_in?
        begin
            headers = request.headers["Authorization"]
            token = headers.split(" ")[1]
            host_id = JWT.decode(token, "todo")[0]["host_id"]
            @host = Host.find(host_id)
        rescue 
            @host = nil 
        end

        unless @host 
            render json: {error: "Please login"}  
        end
       
    end

    def renter_logged_in?
        begin
            headers = request.headers["Authorization"]
            token = headers.split(" ")[1]
            renter_id = JWT.decode(token, "todo")[0]["renter_id"]
            @renter = Renter.find(renter_id)
        rescue 
            @renter = nil 
        end

        unless @renter 
            render json: {error: "Please login"}  
        end
    end
    
end
