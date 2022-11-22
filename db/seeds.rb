# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open.uri"

# user seed
puts 'Cleaning database'
Message.destroy_all
User.destroy_all

puts 'Creating Users'
hugo = {
  first_name: 'Hugo',
  username: 'Hugo Spirit',
  picture_url: 'https://avatars.githubusercontent.com/u/112583556?v=4',
  age: '22',
  email: 'hg@gmail.com',
  encrypted_password: '123456',
  description: 'Studying at Le Wagon'
}

eva = {
  first_name: 'Eva',
  username: 'lola',
  picture_url:'https://ca.slack-edge.com/T02NE0241-U044W7NJEGH-aaa6c8146884-512',
  age: '23',
  email: 'eva@gmail.com',
  encrypted_password: '123456',
  description: 'Studying web dev'
}

jessica = {
  first_name: 'Jessica',
  username: 'jess',
  picture_url: 'https://avatars.githubusercontent.com/u/104274353?v=4',
  age: '24',
  email: 'jl@gmail.com',
  encrypted_password: '123456',
  description: 'Studying web development'
}

giovanni = {
  first_name: 'Giovanni',
  username: 'gio',
  picture_url:'https://avatars.githubusercontent.com/u/88079608?v=4',
  age: '25',
  encrypted_password: '123456',
  description: 'Learning new things'
}


[eva, hugo, giovanni, jessica].each do |attribute|
  user = User.create(attribute)
  puts "created #{user.first_name}"
end
puts 'done!'


# event seed
puts 'Creating Events..'


salsa = {
  title: 'Salsa Latin Groove Party At Club 6/49',
  date: 'Fri, Nov 25, 9:00 p.m',
  category: 'Salsa',
  address: '1112 Saint-Catherine St W, Montreal, Quebec',
  price: '5',
  artist: 'Myriam and Louis',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'
}
