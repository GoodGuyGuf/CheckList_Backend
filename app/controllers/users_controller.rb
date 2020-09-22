class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        render json: UserSerializer.new(user)
    end

    def update
    end

    def destroy
    end

    private 

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
    
end
