require "json"
require "open-uri"
require "nokogiri"
# require_relative "app/models/event"
def api_call
  # Event.destroy_all
  # base url = https://app.ticketmaster.com/{package}/{version}/{resource}.json?apikey=**{cMCr5449SSuQYbG9LSGVtssAhx68HA6l}
  url = "https://app.ticketmaster.com/discovery/v2/events.json?stateCode=QC&apikey=#{ENV['TICKET_MASTER_KEY']}&locale=*&startDateTime=2022-12-01T02:00:00Z&endDateTime=2022-12-03T04:59:00Z&city=Montreal"
  user_serialized = URI.open(url).read
  events = JSON.parse(user_serialized)
  events_targeted = events['_embedded']['events']

  events_targeted.map do |event|
    attributes = { title: event['name'], date: event['dates']['start']['localDate'],
                   picture_url: event['images'][0]['url'],
                   category: event['classifications'][0]['segment']['name'],
                   price: event['priceRanges'][0]['min'],
                   address: event['_embedded']['venues'][0]['address']['line1'],
                   city: event['_embedded']['venues'][0]['city']['name'],
                   time: event['dates']['start']['localTime'],
                   venue: event['_embedded']['venues'][0]['name'] }
    Event.create!(attributes)
  end
end
# puts "#{events_targeted[0]['name']}"
