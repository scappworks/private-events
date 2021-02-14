class EventsController < ApplicationController
    def index
        @events = Event.all.order("event_date ASC")
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        current_user = User.find_by(id: session[:id])
        @event = current_user.events.build(event_params)

        if @event.save
            flash.notice = "Event created!"
        else
            flash.alert = "Event not created!"
        end

        redirect_to user_path(@event.user_id)
    end

    private

    def event_params
        params.permit(:event_name, :event_description, :event_date, :user_id)
    end
end
