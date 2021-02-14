class ApplicationController < ActionController::Base
    def current_user
        @current_user ||= User.find(session[:id]) if session[:id]
    end

    helper_method :current_user

    def authorize
        redirect_to root_path unless current_user
    end

    def create_enrollment(e, u)
        event = Event.find(e)
        user = User.find_by(username: u)
        enrollment = Enrollment.new(event_id: event.id, user_id: user.id)

        if enrollment.save
            flash[:notice] = user.username + " was invited!"
        else
            flash[:alert] = "Invitation not sent"
        end
    end
end
