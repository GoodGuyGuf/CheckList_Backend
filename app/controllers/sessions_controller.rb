class SessionsController < ApplicationController

    def create
        user = User.find_by_username(params[:user][:username])
        if !user.nil? && !!user.authenticate(params[:user][:password])
            render json: UserSerializer.new(user)
        else
            render json: {message: "No user found"}
        end
    end

    def destroy
    end

end
