class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
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
        params.require(:user).permit(:id, :name, :username, :email)
    end
end
