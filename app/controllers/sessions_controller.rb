class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by_id(params[:id])
        if @user && @user.authenticate(params[:id][:password_digest])
            session[:id] = @user.id
            flash.now[:notice] = "user logged in"
            redirect_to user_path(@user)
        else
            flash.now[:alert] = "something is wrong"
            render "new"
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path
    end
end
