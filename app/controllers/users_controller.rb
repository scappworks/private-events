class UsersController < ApplicationController
    before_action :check_if_logged_in, only: [:new, :create]
    
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

        redirect_to user_path(@user)
    end

    private

    def user_params
        params.require(:user).permit(:id, :name, :username, :email, :password)
    end
end
