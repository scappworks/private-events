class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.build(event_params)

        if @event.save
            flash.notice = "Event created!"
        else
            flash.alert = "Event not created!"
        end
    end

    def show
        @event = Event.find(params[:event_name])
    end

    private

    def event_params
        params.require(:event).permit(:event_name, :event_date, :user_id)
    end
end
