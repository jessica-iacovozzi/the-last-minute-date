require "json"
require "open-uri"
require "nokogiri"
# base url = https://app.ticketmaster.com/{package}/{version}/{resource}.json?apikey=**{cMCr5449SSuQYbG9LSGVtssAhx68HA6l}
url = "https://app.ticketmaster.com/discovery/v2/events.json?stateCode=QC&apikey=cMCr5449SSuQYbG9LSGVtssAhx68HA6l&locale=*&startDateTime=2022-11-29T02:00:00Z&endDateTime=2022-12-04T04:59:00Z&city=Montreal"
user_serialized = URI.open(url).read
events = JSON.parse(user_serialized)
events_targeted = events['_embedded']['events']

events_targeted.each do |event|
  p event['name']
  p event['dates']['start']['localDate']
end

# events_targeted.map{ { |event| title= event['name'], date= event['dates']['start']['localDate'], picture_url= event['images'][0]['url'],
#                              category= event['classifications'][0]['segment']['name'], price= event['priceRanges'][0]['min'],
#                              address= event['_embedded']['venues'][0]['address']['line1'],
#                              city= event['_embedded']['venues'][0]['city']['name'],
#                              time= event['dates']['start']['localTime'], venue= event['_embedded']['venues'][0]['name']
#                             }
#                           }
events = events_targeted.map do |event|
  { title: event['name'], date: event['dates']['start']['localDate'], picture_url: event['images'][0]['url'],
    category: event['classifications'][0]['segment']['name'], price: event['priceRanges'][0]['min'],
    address: event['_embedded']['venues'][0]['address']['line1'],
    city: event['_embedded']['venues'][0]['city']['name'], time: event['dates']['start']['localTime'],
    venue: event['_embedded']['venues'][0]['name'] }
end

puts events
# puts "#{events_targeted[0]['name']}"
