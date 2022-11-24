class EventsController < ApplicationController

  def index
    @events = Event.all

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
        info_window: render_to_string(partial: "info_window", locals: {event: event})
        image_url: helpers.asset_url("pin.png")
      }
    end

end
