class UsersController < ApplicationController
    def show

    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save

        else
            
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email)
    end
end
