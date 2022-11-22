# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "open.uri"

# user seed
puts 'Cleaning Database'
Message.destroy_all
User.destroy_all

puts 'Creating Users'
hugo = {
  first_name: 'Hugo',
  username: 'Hugo Spirit',
  tags: ['salsa', 'theatre', 'concert'],
  picture_url:
  'https://avatars.githubusercontent.com/u/112583556?v=4',
  age: '22',
  email: 'hd@gmail.com',
  password: '123456',
  description: 'Studying at Le Wagon'
}

eva = {
  first_name: 'Eva',
  username: 'lola',
  tags: ['Opera', 'Open-mic', 'wizkid'],
  picture_url:
  'https://ca.slack-edge.com/T02NE0241-U044W7NJEGH-aaa6c8146884-512',
  age: '23',
  email: 'eva@gmail.com',
  password: '123456',
  description: 'Studying web dev'
}

jessica = {
  first_name: 'Jessica',
  username: 'jess',
  tags: ['Concerts', 'mexican', 'Drake'],
  picture_url:
  'https://avatars.githubusercontent.com/u/104274353?v=4',
  age: '24',
  email: 'jl@gmail.com',
  password: '123456',
  description: 'Studying web development'
}

giovanni = {
  first_name: 'Giovanni',
  username: 'gio',
  tags: ['Salsa', 'Hockey', 'Comedy'],
  picture_url:
  'https://avatars.githubusercontent.com/u/88079608?v=4',
  age: '25',
  email: 'gio@gmail.com',
  password: '123456',
  description: 'Learning new things'
}

[eva, hugo, giovanni, jessica].each do |attribute|
  user = User.create!(attribute)
  puts "created #{user.first_name}"
end
puts 'done!'

# Adding event seed
puts 'Cleaning events'
event.destoy_all

time = Time.new

puts 'Creating Event..'

salsa = {
  title: 'Salsa Latin Groove Party At Club 6/49',
  date: 'Fri, Nov 25, 9:00 p.m',
  category: 'Salsa',
  address: '1112 Saint-Catherine St W, Montreal, Quebec',
  price: '5',
  artist: 'Myriam and Louis',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'

}

salsa = {
  title: '1909 Av. des Canadiens-de-Montréal, Montreal, Quebec',
  date: 'Date.new(2022, 11, 19)',
  category: 'Salsa',
  address: '1112 Saint-Catherine St W, Montreal, Quebec',
  price: '5',
  artist: 'Myriam and Louis',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'

}

salsa = {
  title: 'Salsa Latin Groove Party At Club 6/49',
  date: 'Fri, Nov 25, 9:00 p.m',
  category: 'Salsa',
  address: '1112 Saint-Catherine St W, Montreal, Quebec',
  price: '5',
  artist: 'Myriam and Louis',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'
}

Message.destroy_all
puts "destroyed all messages"

Conversation.destroy_all
puts "destroyed all conversations"

User.destroy_all
puts "destroyed all users"

# User.create!(email: "j@j.com", password: "123456")
# User.create!(email: "e@e.com", password: "123456")

# Conversation.create!

# Message.create!(content: "Hey", sender: User.first, receiver: User.last, conversation: Conversation.first)
# Message.create!(content: "What's up?", sender: User.first, receiver: User.last, conversation: Conversation.first)

# Message.create!(content: "Yo", sender: User.last, receiver: User.first, conversation: Conversation.first)
# Message.create!(content: "Not much, you?", sender: User.last, receiver: User.first, conversation: Conversation.first)

# users = User.create([{ first_name: "Jessica",
#                        username: "theoneandonlyjess",
#                        age: 26,
#                        description: "I love R&B. My favourite artists are Jessie Reyez and Kehlani",
#                        picture_url: "https://images.unsplash.com/photo-1628015081036-0747ec8f077a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
#                        tags: ["R&B"],
#                        email: "iacovozzi.jessica@gmail.com",
#                        password: "123456" }])
