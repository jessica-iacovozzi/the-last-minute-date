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
Event.destroy_all

puts "Generating the dates..."
time1 = Time.now
time2 = time1 + (4 * 60 * 60) # plus 4 hours
time3 = time1 + (2 * 60 * 60) # plus 2 hours

# Formatting the dates -> Tue, Nov 22, 6pm
time1.strftime("%a, %b %e, %-I%P")
time2.strftime("%a, %b %e, %-I%P")
time3.strftime("%a, %b %e, %-I%P")

puts 'Creating Event...'
salsa = {
  title: 'Salsa Latin Groove Party At Club 6/49',
  date: time1,
  category: 'Arts & Theatre',
  address: '1112 Saint-Catherine St W, Montreal, Quebec',
  description: 'buggie woogy and let loose',
  price: '5',
  artist: 'Myriam and Louis',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'
}
hockey = {
  title: 'Montreal Canadiens vs. Nashville Predators',
  date: time2,
  category: 'Sports',
  address: 'Centre Bell, 1909 Av. des Canadiens-de-Montréal, Montréal, QC',
  description: 'Watch your favorite game',
  price: '287',
  artist: 'Nashville vs Montreal Canadiens',
  picture_url: 'https://b.fssta.com/uploads/application/nhl/venues/Bell-Centre.vresize.2240.1260.medium.1.jpg'
}
Comedy = {
  title: 'Patrick Norman',
  date: time3,
  category: 'Arts & Theatre',
  address: 'L`Étoile Banque Nationale
  6000 Boul. de Rome, Brossard, Quebec',
  description: "Patrick Norman will be performing near you at L'Étoile on Thursday 22 December 2022 as part of their tour, and are scheduled to play 1 concert across 1 country in 2022-2023.",
  price: '45',
  artist: 'Patrick Norman',
  picture_url: 'https://www.nvrc.ca/sites/default/files/styles/section_landing_banner/public/default_images/theatre-placeholder-banner.jpg?itok=b1b9eQja'
}
skeggs_concert = {
  title: 'SKEGSS',
  date: time3,
  category: 'Concerts',
  address: 'Théâtre Corona Montreal, Canada',
  description: '',
  price: '64',
  artist: 'SKEGSS, Sir Chloe and Adam Newling',
  picture_url: 'https://images.thebrag.com/tmn/uploads/Skegss-Press-Shot-2019.png'
}

Symphorien = {
  title: 'Symphorien',
  date: time1,
  category: 'Arts & Theatre',
  address: "L'Etoile Brossard, Canada",
  description: 'The main character, Symphorien, is a naive but sympathetic fellow, who is the janitor for this guest house run by Mrs. Sylvain, a single yet bumbling lady who runs the house in a strict, efficient way.',
  price: '55',
  artist: 'Symphorien',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'
}

concert = {
  title: "Les Shirley - More is More (Lancement d'album)",
  date: time2,
  category: 'Concerts',
  address: 'Fairmount Theatre
  Montreal, Canada',
  description: 'Sweat at the show not before',
  price: '40',
  artist: 'Les Shirley',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'
}

[ concert Symphorien skeggs_concert Comedy hockey salsa ].each do |attribute|
  event = events.create!(attribute)
  puts "created #{event.title}"
end
puts "done!"

# Messages Seed
Message.destroy_all
puts "destroyed all messages"

Conversation.destroy_all
puts "destroyed all conversations"

# User.destroy_all
# puts "destroyed all users"

# User.create!(email: "j@j.com", password: "123456")
# User.create!(email: "e@e.com", password: "123456")

Conversation.create!

Message.create!(content: "Hey", sender: User.first, receiver: User.last, conversation: Conversation.first)
Message.create!(content: "What's up?", sender: User.first, receiver: User.last, conversation: Conversation.first)

Message.create!(content: "Yo", sender: User.last, receiver: User.first, conversation: Conversation.first)
Message.create!(content: "Not much, you?", sender: User.last, receiver: User.first, conversation: Conversation.first)

users = User.create([{ first_name: "Jessica",
                       username: "theoneandonlyjess",
                       age: 26,
                       description: "I love R&B. My favourite artists are Jessie Reyez and Kehlani",
                       picture_url: "https://images.unsplash.com/photo-1628015081036-0747ec8f077a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                       tags: ["R&B"],
                       email: "iacovozzi.jessica@gmail.com",
                       password: "123456" }])
