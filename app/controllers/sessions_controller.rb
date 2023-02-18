class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user
            render json: {message: "Welcome #{user.username}!"}, status: :ok
        else
            render json: {error: "Invalid name or password"}, status: :unauthorized
        end
    end

    def destroy
        session[:user_id] = nil
        head :no_content
    end
end
