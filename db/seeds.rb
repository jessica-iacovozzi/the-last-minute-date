# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# TODO: User Seed
puts 'Cleaning Database'
Message.destroy_all
puts 'Cleaned Messages...'
User.destroy_all
puts 'Cleaned Users...'
Event.destroy_all
puts 'Cleaned Events...'
Conversation.destroy_all
puts 'Cleaned Conversations...'
puts 'Done!'

puts 'Generating Tags..'
sports = %w[
  Baseball Basketball Boxing Cycling eSports Football Gymnastics Hockey Martial Arts Soccer Tennis Volleyball
].sample(3)
puts 'Created Sports'

concert = %w[
  Alternative Ballads/Romantic Blues Chanson Francaise Classical Country Dance/Electronic Folk Hip-Hop/Rap Jazz Latin Metal Pop R&B Reggae Religious Rock
].sample(4)
puts 'Created Concerts'

arts_and_theatre = %w[
  Comedy Cultural Dance Fashion Magic & Illusion Music Opera Puppetry Theatre
].sample(3)
puts 'Created Arts & Theatre'

# Returns -> A multidimensional array -> flatten into one array
tags = [sports, concert, arts_and_theatre]
all_tags = tags.flatten
puts 'Done!'

puts 'Generating Users...'
hugo = {
  first_name: 'Hugo',
  username: 'Hugo Spirit',
  tags: all_tags,
  picture_url:
  'https://avatars.githubusercontent.com/u/112583556?v=4',
  age: '22',
  email: 'h@d.com',
  password: '123456',
  description: 'Studying at Le Wagon'
}
eva = {
  first_name: 'Eva',
  username: 'lola',
  tags: all_tags,
  picture_url:
  'https://ca.slack-edge.com/T02NE0241-U044W7NJEGH-aaa6c8146884-512',
  age: '23',
  email: 'e@e.com',
  password: '123456',
  description: 'Studying web dev'
}
jessica = {
  first_name: 'Jessica',
  username: 'jess',
  tags: all_tags,
  picture_url:
  'https://avatars.githubusercontent.com/u/104274353?v=4',
  age: '26',
  email: 'j@j.com',
  password: '123456',
  description: 'Studying web development'
}
giovanni = {
  first_name: 'Giovanni',
  username: 'gio',
  tags: all_tags,
  picture_url:
  'https://avatars.githubusercontent.com/u/88079608?v=4',
  age: '25',
  email: 'g@g.com',
  password: '123456',
  description: 'Learning new things'
}
alex = {
  first_name: 'Alex',
  username: 'alexadvocate',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/71_gfkef7.jpg',
  age: '37',
  email: 'ad@d.com',
  password: '123456',
  description: 'Studying at Le Wagon'
}
megan = {
  first_name: 'Megan',
  username: 'meganfragrant',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/96_cmn2l1.jpg',
  age: '27',
  email: 'me@e.com',
  password: '123456',
  description: 'Studying web dev'
}
alicia = {
  first_name: 'Alicia',
  username: 'potentialalicia',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/104_qsly67.jpg',
  age: '29',
  email: 'pa@j.com',
  password: '123456',
  description: 'Studying web development'
}
delores = {
  first_name: 'Delores',
  username: 'idealdelores',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/107_sjm1vi.jpg',
  age: '25',
  email: 'de@g.com',
  password: '123456',
  description: 'Learning new things'
}
keanu = {
  first_name: 'Keanu',
  username: 'keanupop',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/37_npvpm9.jpg',
  age: '35',
  email: 'kk@g.com',
  password: '123456',
  description: 'Learning new things'
}
kira = {
  first_name: 'kira',
  username: 'beautykira',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/22_aqlonp.jpg',
  age: '46',
  email: 'bk@g.com',
  password: '123456',
  description: 'Learning new things'
}
frances = {
  first_name: 'Frances',
  username: 'franceschilli',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/69_npnerl.jpg',
  age: '31',
  email: 'fc@g.com',
  password: '123456',
  description: 'Learning new things'
}
charis = {
  first_name: 'Charis',
  username: 'lovablecharis',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/49_cm0hii.jpg',
  age: '28',
  email: 'lc@g.com',
  password: '123456',
  description: 'Learning new things'
}
henrietta = {
  first_name: 'Henrietta',
  username: 'henriettatulip',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/20_sc0d4x.jpg',
  age: '32',
  email: 'ht@g.com',
  password: '123456',
  description: 'Learning new things'
}
minnie = {
  first_name: 'Minnie',
  username: 'onlyminnie',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/19_a1inms.jpg',
  age: '33',
  email: 'om@g.com',
  password: '123456',
  description: 'Learning new things'
}
sebastien = {
  first_name: 'Sebastien',
  username: 'juicysebastien',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/50_cxwpqc.jpg',
  age: '21',
  email: 'seb@g.com',
  password: '123456',
  description: 'Learning new things'
}
eleanor = {
  first_name: 'Eleanor',
  username: 'eleanorcookie',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/21_plnux6.jpg',
  age: '27',
  email: 'ec@g.com',
  password: '123456',
  description: 'Learning new things'
}
sasha = {
  first_name: 'Sasha',
  username: 'sashayield',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/10_b8f3h0.jpg',
  age: '27',
  email: 'sy@g.com',
  password: '123456',
  description: 'Learning new things'
}
jennifer = {
  first_name: 'Jennifer',
  username: 'jellojennifer',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/3_d6zwb2.jpg',
  age: '26',
  email: 'jj@g.com',
  password: '123456',
  description: 'Learning new things'
}
noora = {
  first_name: 'Noor',
  username: 'noornature',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/8_tjclm1.jpg',
  age: '22',
  email: 'juu@g.com',
  password: '123456',
  description: 'Learning new things'
}
marcelhio = {
  first_name: 'Marcelhio',
  username: 'marcelhiocook',
  tags: all_tags,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/2_dghr4j.jpg',
  age: '24',
  email: 'mc@g.com',
  password: '123456',
  description: 'Learning new things'
}

[
  eva, hugo, giovanni, jessica,
  alex, megan, alicia, delores,
  keanu, kira, frances, charis,
  henrietta, minnie, sebastien, eleanor,
  sasha, jennifer, noora, marcelhio
].each do |attribute|
  user = User.create!(attribute)
  puts "Created #{user.first_name}"
end
puts 'done!'

# TODO: Adding event seed
puts 'Generating Events...'

puts "Created Dates"
time1 = Time.now - 1.day # 1 day
time2 = time1 - 2.day # plus 2 day
time3 = time1 - 3.day # plus 3 day

# Formatting the dates -> Tue, Nov 22, 6pm
time1.strftime("%a, %b %e, %-I%P")
time2.strftime("%a, %b %e, %-I%P")
time3.strftime("%a, %b %e, %-I%P")

puts 'Created Events'
salsa_latin = {
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
patrick_norman = {
  title: 'Patrick Norman',
  date: time3,
  category: 'Arts & Theatre',
  address: 'L`Étoile Banque Nationale
  6000 Boul. de Rome, Brossard, Quebec',
  description: "Patrick Norman will be performing near you at L'Étoile on Thursday 22 December 2022 as part of their tour.",
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
symphorien = {
  title: 'Symphorien',
  date: time1,
  category: 'Arts & Theatre',
  address: "L'Etoile Brossard, Canada",
  description: 'The main character, Symphorien, is a naive but sympathetic fellow, who is the janitor for this guest house run by Mrs. Sylvain, a single yet bumbling lady.',
  price: '55',
  artist: 'Symphorien',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'
}
les_shirley = {
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
# ----
guillaume_pineault = {
  title: 'Guillaume Pineault',
  date: time3,
  category: 'Comedy',
  address: '1100, boulevard Taschereau, Laprairie, QC J5R 1W8',
  description: "Guillaume Pineault was first an occupational therapist then an osteopath but he's finally in humor",
  price: '35',
  artist: 'Guillaume Pineault',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669232271/last-minute-date/Event%20images/9ca32c6f-c8de-432c-ab06-c79befc8f85b_1323201_TABLET_LANDSCAPE_LARGE_16_9_icrc17.webp'
}
skeggs_con = {
  title: 'SKEGSS',
  date: time2,
  category: 'Concerts',
  address: 'Théâtre Corona Montreal, Canada',
  description: '',
  price: '64',
  artist: 'SKEGSS, Sir Chloe and Adam Newling',
  picture_url: 'https://images.thebrag.com/tmn/uploads/Skegss-Press-Shot-2019.png'
}

sym = {
  title: 'Symphorien',
  date: time1,
  category: 'Arts & Theatre',
  address: "L'Etoile Brossard, Canada",
  description: 'The main character, Symphorien, is a naive but sympathetic fellow, who is the janitor for this guest house run by Mrs. Sylvain, a single yet bumbling lady.',
  price: '55',
  artist: 'Symphorien',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'
}
con = {
  title: "Les Shirley - More is More (Lancement d'album)",
  date: time1,
  category: 'Concerts',
  address: 'Fairmount Theatre
  Montreal, Canada',
  description: 'Sweat at the show not before',
  price: '40',
  artist: 'Les Shirley',
  picture_url: 'https://www.danceus.org/events/images/166897830863316/salsa-groove-party-at-club--cover.png'
}


[
  salsa_latin, hockey, patrick_norman, skeggs_concert, symphorien,
  les_shirley, guillaume_pineault, skeggs_con, sym, con
].each do |attribute|
  event = Event.create!(attribute)
  puts "Created #{event.category}"
end
puts "Done!"

# User.destroy_all
# puts "destroyed all users"

# User.create!(email: "j@j.com", password: "123456")
# User.create!(email: "e@e.com", password: "123456")

puts 'Created Empty Conversation'
Conversation.create!

puts 'Created  Messages'
Message.create!(
  content: "Hey",
  sender: User.first,
  receiver: User.last,
  conversation: Conversation.first
)
Message.create!(
  content: "What's up?",
  sender: User.first,
  receiver: User.last,
  conversation: Conversation.first
)
Message.create!(
  content: "Yo",
  sender: User.last,
  receiver: User.first,
  conversation: Conversation.first
)
Message.create!(
  content: "Not much, you?",
  sender: User.last,
  receiver: User.first,
  conversation: Conversation.first
)

users = User.create([{ first_name: "Jessica",
                       username: "theoneandonlyjess",
                       age: 26,
                       description: "I love R&B. My favourite artists are Jessie Reyez and Kehlani",
                       picture_url: "https://images.unsplash.com/photo-1628015081036-0747ec8f077a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                       tags: ["R&B"],
                       email: "iacovozzi.jessica@gmail.com",
                       password: "123456" }])
puts 'All Done!'
