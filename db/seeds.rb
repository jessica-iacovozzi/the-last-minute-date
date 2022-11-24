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
Ticket.destroy_all
puts 'Cleaned Tickets...'
puts 'Done!'

puts 'Generating Tags..'
def sport
  sport = [
    'Baseball', 'Basketball', 'Boxing', 'Cycling', 'eSports',
    'Football', 'Gymnastics', 'Hockey', 'Martial', 'Arts', 'Soccer',
    'Tennis', 'Volleyball'
  ].sample(rand(6))
  return sport
end
puts 'Created Sports'
def concert
  concert = [
    'Pop', 'Alternative', 'Ballads/Romantic', 'Blues', 'Chanson',
    'Francaise', 'Classical', 'Country', 'Dance/Electronic', 'Folk',
    'Hip-Hop/Rap', 'Jazz', 'Latin', 'Metal', 'R&B', 'Reggae', 'Religious', 'Rock'
  ].sample(rand(8))
  return concert
end
puts 'Created Concerts'

def arts_and_theatre
  arts_and_theatre = [
    'Comedy', 'Cultural', 'Dance', 'Fashion', 'Magic_&_illusion', 'Music', 'Opera', 'Puppetry', 'Theatre'
  ].sample(rand(8))
  return arts_and_theatre
end
puts 'Created Arts & Theatre'

# Returns -> A multidimensional array -> flatten into one array
tags = [sport, concert, arts_and_theatre]
tags2 = [sport, concert, arts_and_theatre]
tags3 = [sport, concert, arts_and_theatre]
tags4 = [sport, concert, arts_and_theatre]
tags5 = [sport, concert, arts_and_theatre]
tags6 = [sport, concert, arts_and_theatre]
tags7 = [sport, concert, arts_and_theatre]
all_tags = tags.flatten
all_tags2 = tags2.flatten
all_tags3 = tags3.flatten
all_tags4 = tags4.flatten
all_tags5 = tags5.flatten
all_tags6 = tags6.flatten
all_tags7 = tags7.flatten
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
  description: 'Internet enthusiast. Hipster-friendly reader. Outdoor lover.'
}
eva = {
  first_name: 'Eva',
  username: 'lola',
  tags: all_tags2,
  picture_url:
  'https://ca.slack-edge.com/T02NE0241-U044W7NJEGH-aaa6c8146884-512',
  age: '23',
  email: 'e@e.com',
  password: '123456',
  description: 'Zombie specialist, Communicator, Internet fanatic.'
}
jessica = {
  first_name: 'Jessica',
  username: 'jess',
  tags: all_tags4,
  picture_url:
  'https://avatars.githubusercontent.com/u/104274353?v=4',
  age: '26',
  email: 'j@j.com',
  password: '123456',
  description: 'Pop culture geek, Incurable bacon fan.'
}
giovanni = {
  first_name: 'Giovanni',
  username: 'gio',
  tags: all_tags6,
  picture_url:
  'https://avatars.githubusercontent.com/u/88079608?v=4',
  age: '25',
  email: 'g@g.com',
  password: '123456',
  description: 'Evil coffee lover, Music fanatic.'
}
alex = {
  first_name: 'Alex',
  username: 'alexadvocate',
  tags: all_tags5,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/71_gfkef7.jpg',
  age: '37',
  email: 'ad@d.com',
  password: '123456',
  description: 'Extreme twitter lover, Analyst, Pop culture geek.'
}
megan = {
  first_name: 'Megan',
  username: 'meganfragrant',
  tags: all_tags7,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/96_cmn2l1.jpg',
  age: '27',
  email: 'me@e.com',
  password: '123456',
  description: 'Tv specialist, Proud thinker.'
}
alicia = {
  first_name: 'Alicia',
  username: 'potentialalicia',
  tags: all_tags3,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/104_qsly67.jpg',
  age: '29',
  email: 'pa@j.com',
  password: '123456',
  description: 'Writer, Hardcore twitter trailblazer.'
}
delores = {
  first_name: 'Delores',
  username: 'idealdelores',
  tags: all_tags2,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/107_sjm1vi.jpg',
  age: '25',
  email: 'de@g.com',
  password: '123456',
  description: 'Pop culture guru, Passionate coffee nerd.'
}
keanu = {
  first_name: 'Keanu',
  username: 'keanupop',
  tags: all_tags4,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/37_npvpm9.jpg',
  age: '35',
  email: 'kk@g.com',
  password: '123456',
  description: 'Typical social mediaholic, Music fan.'
}
kira = {
  first_name: 'kira',
  username: 'beautykira',
  tags: all_tags6,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/22_aqlonp.jpg',
  age: '46',
  email: 'bk@g.com',
  password: '123456',
  description: 'Social media lover, Music fan, Introvert.'
}
frances = {
  first_name: 'Frances',
  username: 'franceschilli',
  tags: all_tags5,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/69_npnerl.jpg',
  age: '31',
  email: 'fc@g.com',
  password: '123456',
  description: 'Avid travel specialist, Friendly bacon lover.'
}
charis = {
  first_name: 'Charis',
  username: 'lovablecharis',
  tags: all_tags2,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/49_cm0hii.jpg',
  age: '28',
  email: 'lc@g.com',
  password: '123456',
  description: 'Coffee advocate, Wannabe gamer.'
}
henrietta = {
  first_name: 'Henrietta',
  username: 'henriettatulip',
  tags: all_tags3,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/20_sc0d4x.jpg',
  age: '32',
  email: 'ht@g.com',
  password: '123456',
  description: 'Hipster-friendly travel ninja.'
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
  description: 'Professional music specialist, Game lover.'
}
sebastien = {
  first_name: 'Sebastien',
  username: 'juicysebastien',
  tags: all_tags5,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/50_cxwpqc.jpg',
  age: '21',
  email: 'seb@g.com',
  password: '123456',
  description: 'Total social media scholar.'
}
eleanor = {
  first_name: 'Eleanor',
  username: 'eleanorcookie',
  tags: all_tags2,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225995/last-minute-date/user-images/21_plnux6.jpg',
  age: '27',
  email: 'ec@g.com',
  password: '123456',
  description: 'Hardcore pop culture advocate.'
}
sasha = {
  first_name: 'Sasha',
  username: 'sashayield',
  tags: all_tags6,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/10_b8f3h0.jpg',
  age: '27',
  email: 'sy@g.com',
  password: '123456',
  description: 'Lifelong music nerd, Avid food buff.'
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
  description: 'Travelaholic, Incurable web fanatic.'
}
noora = {
  first_name: 'Noor',
  username: 'noornature',
  tags: all_tags3,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/8_tjclm1.jpg',
  age: '22',
  email: 'juu@g.com',
  password: '123456',
  description: 'Unapologetic music scholar, Problem solver.'
}
marcelhio = {
  first_name: 'Marcelhio',
  username: 'marcelhiocook',
  tags: all_tags6,
  picture_url:
  'https://res.cloudinary.com/dppymdnxh/image/upload/v1669225994/last-minute-date/user-images/2_dghr4j.jpg',
  age: '24',
  email: 'mc@g.com',
  password: '123456',
  description: 'Music aficionado, Subtly charming food nerd.'
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
guillaume_pineault = {
  title: 'Guillaume Pineault',
  date: time3,
  time: '8:00',
  city: 'Montreal',
  venue: 'Salle Richard-Sauvageau',
  category: 'arts_and_theatre',
  address: '1100, boulevard Taschereau, Laprairie, QC J5R 1W8',
  description: "Occupational therapist then an osteopath but he's finally in humor.",
  price: '35',
  artist: 'Guillaume Pineault',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669232271/last-minute-date/Event%20images/9ca32c6f-c8de-432c-ab06-c79befc8f85b_1323201_TABLET_LANDSCAPE_LARGE_16_9_icrc17.webp'
}
pomme = {
  title: 'Pomme',
  date: time1,
  time: '7:00',
  city: 'Montreal',
  venue: 'MTELUS',
  category: 'concert',
  address: '59 Rue Sainte-Catherine Est, Montreal, QC H2X 1K5',
  description: 'French singer-songwriter.',
  price: '110',
  artist: 'Claire Pommet',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669234934/last-minute-date/Event%20images/e8d7bf68-ca94-4ce5-a9c0-006e6b6f81dd_1774051_TABLET_LANDSCAPE_LARGE_16_9_znvr5n.webp'
}
jessie_reyez = {
  title: 'Jessie Reyez',
  date: time2,
  time: '8:00',
  city: 'Montreal',
  venue: 'MTELUS',
  category: 'concert',
  address: '59 Rue Sainte-Catherine Est, Montreal, QC H2X 1K5',
  description: 'Canadian singer-songwriter.',
  price: '287',
  artist: 'Jessica Reyez',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669236589/last-minute-date/Event%20images/0x0_byplvc.jpg'
}
montreal_canadiens = {
  title: 'Montreal Canadiens',
  date: time3,
  time: '7:00',
  city: 'Montreal',
  venue: 'Centre Bell',
  category: 'sport',
  address: '1909 avenue des Canadiens-de-Montréal, Montreal, QC H4B 5G0',
  description: "Lineup: Montreal Canadiens vs San Jose Sharks.",
  price: '145',
  artist: 'Hockey Game',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669237028/last-minute-date/Event%20images/HabsCouldWinIt_Getty_Ringer.0_w4dydb.jpg'
}
jo_cormier = {
  title: 'Jo Cormier',
  date: time3,
  time: '8:00',
  city: 'Brossard',
  venue: 'Le Club Square Dix30',
  category: 'arts_and_theatre',
  address: '9200 Boulevard Leduc, Brossard, QC J4Y0L1',
  description: 'o Cormier shares a wish with his parents even before starting school: to be humorous!',
  price: '29',
  artist: 'Jo Cormier',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669237216/last-minute-date/Event%20images/jo-cormier_xnhcye.jpg'
}
rocket_hockey = {
  title: 'Rocket vs Abbotsford',
  date: time1,
  time: '7:00',
  city: 'Laval',
  venue: 'Place Bell',
  category: 'sport',
  address: "1950 Rue Claude-Gagne, Laval, QC H7N 0E4",
  description: 'Lineup: Rocket de Laval vs Abbotsford Canucks.',
  price: '55',
  artist: 'Hockey Team',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669237659/last-minute-date/Event%20images/995013667dd9079a4872274476d8d160_p_vi_110335_1612963928_oxw2iu.png'
}
lil_tjay = {
  title: "Lil Tjay",
  date: time2,
  time: '7:00',
  city: 'Toronto',
  venue: 'REBEL',
  category: 'concert',
  address: '11 Polson St., Toronto, ON M5A 1A4',
  description: 'American rapper and singer.',
  price: '57',
  artist: 'Tione Jayden Merritt',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669237796/last-minute-date/Event%20images/83356a8d-1f34-4063-920f-90ec11a40412_1822481_TABLET_LANDSCAPE_LARGE_16_9_nscwrh.jpg'
}
riz_la_vie = {
  title: 'Riz La Vie',
  date: time2,
  time: '8:00',
  city: 'Toronto',
  venue: 'Pheonix',
  category: 'concert',
  address: '1403 Rue Sainte Elisabeth, Montreal, QC H2X 3C5',
  description: 'New-York based singer/songwriter.',
  price: '16',
  artist: 'Riz La Vie',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669238153/last-minute-date/Event%20images/indie_RIZ-LA-VIE_770_433_70_s_agdsdg.jpg'
}
dominic_paquet = {
  title: 'Dominic Paquet',
  date: time1,
  time: '8:00',
  city: 'Toronto',
  venue: 'Olympia',
  category: 'arts_and_theatre',
  address: "1004 Sainte-Catherine Street East, Montreal, QC H2L 2G2",
  description: 'Dominic Paquet is one of the most hilarious showman! Comedian, actor and host.',
  price: '49',
  artist: 'Dominic Paquet',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669238545/last-minute-date/Event%20images/Mise-en-vente-Dominic-Paquet-Gracieusete%CC%81_bgr1ka.jpg'
}
junior = {
  title: "Fina World Junior Diving Championships",
  date: time2,
  time: '5:00',
  city: 'Toronto',
  venue: 'Centre sportif du Parc olympique',
  category: 'sport',
  address: '3200 Rue Viau, Montreal, QC H1B3J3',
  description: 'Competitive Dicing.',
  price: '452',
  artist: 'Diving Championships',
  picture_url: 'https://res.cloudinary.com/dppymdnxh/image/upload/v1669238994/last-minute-date/Event%20images/Hernandez-Schnell-courtesy-USA-Diving_rcb5vp.png'
}

[
  guillaume_pineault, pomme, jessie_reyez, montreal_canadiens, jo_cormier,
  rocket_hockey, lil_tjay, riz_la_vie, dominic_paquet, junior
].each do |attribute|
  event = Event.create!(attribute)
  puts "Created #{event.category}"
end
puts "Done!"

# User.create!(email: "j@j.com", password: "123456")
# User.create!(email: "e@e.com", password: "123456")

puts 'Created Empty Conversation'
Conversation.create!

puts 'Created Messages'
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

users = User.create([{ first_name: "Jess",
                       username: "theoneandonlyjess",
                       age: 26,
                       description: "I love R&B. My favourite artists are Jessie Reyez and Kehlani",
                       picture_url: "https://images.unsplash.com/photo-1628015081036-0747ec8f077a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                       tags: all_tags4,
                       email: "iacovozzi.jessica@gmail.com",
                       password: "123456" }])
puts 'Done!'

puts 'Generating Tickets'

# Giovanni - ticket
puts 'Tickets for Giovanni'
giov = {
  event_id: Event.find_by(title: 'Guillaume Pineault').id,
  user_id: User.find_by(first_name: 'Giovanni').id
}
giov2 = {
  event_id: Event.find_by(title: 'Pomme').id,
  user_id: User.find_by(first_name: 'Giovanni').id
}
giov3 = {
  event_id: Event.find_by(title: 'Dominic Paquet').id,
  user_id: User.find_by(first_name: 'Giovanni').id
}
giov4 = {
  event_id: Event.find_by(title: 'Lil Tjay').id,
  user_id: User.find_by(first_name: 'Giovanni').id
}
giov5 = {
  event_id: Event.find_by(title: 'Montreal Canadiens').id,
  user_id: User.find_by(first_name: 'Giovanni').id
}

puts "Tickets for Eva"
evaa = {
  event_id: Event.find_by(title: 'Jessie Reyez').id,
  user_id: User.find_by(first_name: 'Eva').id
}
evaa2 = {
  event_id: Event.find_by(title: 'Rocket vs Abbotsford').id,
  user_id: User.find_by(first_name: 'Eva').id
}
evaa3 = {
  event_id: Event.find_by(title: 'Lil Tjay').id,
  user_id: User.find_by(first_name: 'Eva').id
}
evaa4 = {
  event_id: Event.find_by(title: 'Fina World Junior Diving Championships').id,
  user_id: User.find_by(first_name: 'Eva').id
}
evaa5 = {
  event_id: Event.find_by(title: 'Dominic Paquet').id,
  user_id: User.find_by(first_name: 'Eva').id
}
evaa6 = {
  event_id: Event.find_by(title: 'Pomme').id,
  user_id: User.find_by(first_name: 'Eva').id
}

puts 'Tickets for Hugo'
hugoo = {
  event_id: Event.find_by(title: 'Dominic Paquet').id,
  user_id: User.find_by(first_name: 'Hugo').id
}
hugoo2 = {
  event_id: Event.find_by(title: 'Rocket vs Abbotsford').id,
  user_id: User.find_by(first_name: 'Hugo').id
}
hugoo3 = {
  event_id: Event.find_by(title: 'Guillaume Pineault').id,
  user_id: User.find_by(first_name: 'Hugo').id
}
hugoo4 = {
  event_id: Event.find_by(title: 'Pomme').id,
  user_id: User.find_by(first_name: 'Hugo').id
}
hugoo5 = {
  event_id: Event.find_by(title: 'Jessie Reyez').id,
  user_id: User.find_by(first_name: 'Hugo').id
}

puts 'Tickets for Jessica'
jesss = {
  event_id: Event.find_by(title: 'Jessie Reyez').id,
  user_id: User.find_by(first_name: 'Jessica').id
}
jesss2 = {
  event_id: Event.find_by(title: 'Jo Cormier').id,
  user_id: User.find_by(first_name: 'Jessica').id
}
jesss3 = {
  event_id: Event.find_by(title: 'Guillaume Pineault').id,
  user_id: User.find_by(first_name: 'Jessica').id
}
jesss4 = {
  event_id: Event.find_by(title: 'Lil Tjay').id,
  user_id: User.find_by(first_name: 'Jessica').id
}
jesss5 = {
  event_id: Event.find_by(title: 'Dominic Paquet').id,
  user_id: User.find_by(first_name: 'Jessica').id
}
jesss6 = {
  event_id: Event.find_by(title: 'Montreal Canadiens').id,
  user_id: User.find_by(first_name: 'Jessica').id
}

[
  giov, giov2, giov3, giov4, giov5,
  evaa, evaa2, evaa3, evaa4, evaa5, evaa6,
  hugoo, hugoo2, hugoo3, hugoo4, hugoo5,
  jesss, jesss2, jesss3, jesss4, jesss5, jesss6
].each do |attribute|
  Ticket.create!(attribute)
  puts "Created #{attribute}"
end

puts "Finally All Done!"
