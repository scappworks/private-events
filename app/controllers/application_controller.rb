class ApplicationController < ActionController::Base
    def current_user
        @current_user ||= User.find(session[:id]) if session[:id]
    end

    helper_method :current_user

    def authorize
        redirect_to root_path unless current_user
    end
end
