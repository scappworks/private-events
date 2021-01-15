class UsersController < ApplicationController
    def show

    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)

        if @user.save
            flash.notice = "user saved!"
        else
            flash.alert = "user NOT saved!"
        end

        redirect_to user_url(@user)
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email)
    end
end
