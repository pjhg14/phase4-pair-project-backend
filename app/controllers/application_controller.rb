class ApplicationController < ActionController::API

    def host_loggin_in?
       
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

    def generate_token(payload)
        JWT.encode(payload, "todo")
    end
end
