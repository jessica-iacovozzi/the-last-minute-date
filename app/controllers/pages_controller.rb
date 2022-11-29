class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:query].present?
      @events = Event.search_by_category_title_artist_date_and_city(params[:query])

      markers
    else
      @events = Event.all

      markers
    end
  end

  def markers
    @markers = @events.geocoded.map do |event|
    {
      lat: event.latitude,
      lng: event.longitude,
      info_window: render_to_string(partial: "info_window", locals: { event: }),
      image_url: helpers.asset_url("pin.png")
    }
    end
    @conversation = Conversation.all
  end
end
