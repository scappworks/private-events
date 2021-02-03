class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(id: params[:id])
        if @user
            session[:id] = @user.id
            flash[:notice] = "user logged in"
            redirect_to user_path(@user)
        else
            flash[:alert] = "something is wrong"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "user logged out"
        redirect_to root_path
    end
end
