class SessionsController < ApplicationController

    def create
        # find_or_create_by
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end

end
