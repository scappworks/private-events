class UsersController < ApplicationController
    before_action :authorize, only: [:show]
    
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
            session[:id] = @user.id
            redirect_to user_path(@user)
        else
            flash.alert = "user NOT saved!"
            redirect_to root_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :email, :password)
    end
end
