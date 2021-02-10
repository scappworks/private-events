class EnrollmentsController < ApplicationController
    def create
        event = Event.find(params[:event_id])
        enrollment = Enrollment.new(event_id: event.id, user_id: params[:user_id])

        if enrollment.save
            flash[:notice] = user.username + " was invited!"
        else
            flash[:alert] = "Invitation not sent"
        end

        redirect_to event_path(event.id)
    end

    def destroy
        event = Event.find(params[:event_id])
        enrollment = Enrollment.find_by(event_id: params[:event_id], user_id: params[:user_id])
        user = User.find(enrollment.user_id)
        enrollment.delete

        if enrollment.destroy
            flash[:notice] = user.username + " was uninvited"
        else
            flash[:alert] = "Invitation not canceled"
        end

        redirect_to event_path(current_user.events.find(event.id))
    end
end
