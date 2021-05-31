class ApplicationController < ActionController::API

    def host_loggin_in?
        begin
            headers = request.headers["Authorization"]
            token = headers.split(" ")[1]
            host_id = JWT.decode(token, "todo")[0]["host_id"]
            @host = host.find(host_id)
        rescue 
            @host = nil 
        end
        render json: {error: "Please login"} unless @host   
       
    end

    def generate_token(payload)
        JWT.encode(payload, "todo", "HS256")
    end
end
