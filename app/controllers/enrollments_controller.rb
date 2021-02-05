class EnrollmentsController < ApplicationController
    def create
        event = Event.find(params[:event_id])
        enrollment = Enrollment.new(event_id: event.id, user_id: params[:user_id])

        if enrollment.save
            flash[:notice] = "Enrollment created"
        else
            flash[:alert] = "Enrollment not saved"
        end

        redirect_to event_path(event.id)
    end
end
