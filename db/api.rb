require "json"
require "open-uri"
require "nokogiri"
# require_relative "app/models/event"
def api_call
  Event.destroy_all
  # base url = https://app.ticketmaster.com/{package}/{version}/{resource}.json?apikey=**{cMCr5449SSuQYbG9LSGVtssAhx68HA6l}
  url = "https://api.seatgeek.com/2/events?client_id=MzA2NzIyNjF8MTY2OTY5MjQ4Ni42NzQxMjQ&datetime_utc.gte=2022-12-03&venue.state=QC"
  user_serialized = URI.open(url).read
  events = JSON.parse(user_serialized)
  events_targeted = events['events']

  events_targeted.map do |event|
    attributes = { title: event['short_title'],
                   artist: event['performers'][0]['name'],
                   date: event["datetime_local"][0, 10],
                   picture_url: event['performers'][0]['image'],
                   category: event['performers'][0]['taxonomies'][0]['name'],
                   price: event['stats']['lowest_price'] || 0,
                   latitude: event['venue']['location']['lat'],
                   longitude: event['venue']['location']['lon'],
                   address: event['venue']['address'],
                   city: event['venue']['city'],
                   time: event["datetime_local"][11, 5],
                   venue: event['venue']['name'] }
    Event.create!(attributes)
  end
end
# puts "#{events_targeted}"
