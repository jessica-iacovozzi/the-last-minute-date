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
