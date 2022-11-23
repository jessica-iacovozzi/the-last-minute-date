require "json"
require "open-uri"
require "nokogiri"
# base url = https://app.ticketmaster.com/{package}/{version}/{resource}.json?apikey=**{cMCr5449SSuQYbG9LSGVtssAhx68HA6l}
url = "https://app.ticketmaster.com/discovery/v2/events.json?stateCode=QC&apikey=#{ENV['TICKET_MASTER_KEY']}"
user_serialized = URI.open(url).read
events = JSON.parse(user_serialized)

puts events
