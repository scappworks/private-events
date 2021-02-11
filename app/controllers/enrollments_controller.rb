class EnrollmentsController < ApplicationController
    def create
        event = Event.find(params[:event_id])
        user = User.find_by(username: params[:username])
        enrollment = Enrollment.new(event_id: event.id, user_id: user.id)

        if enrollment.save
            flash[:notice] = user.username + " was invited!"
        else
            flash[:alert] = "Invitation not sent"
        end

        redirect_to event_path(event.id)
    end

    def destroy
        event = Event.find(params[:event_id])
        user = User.find_by(username: params[:username])
        enrollment = Enrollment.find_by(event_id: event.id, user_id: user.id)
        enrollment.delete

        if enrollment.destroy
            flash[:notice] = user.username + " was uninvited"
        else
            flash[:alert] = "Invitation not canceled"
        end

        redirect_to event_path(event.id)
    end
end
