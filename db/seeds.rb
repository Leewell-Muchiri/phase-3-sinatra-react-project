puts "🌱 Seeding spices..."

# Seed your database here
user1 = User.create(username: 'Lee', password: 'eel')
user2 = User.create(username: 'Leew', password: 'eel')
user3 = User.create(username: 'Leewe', password: 'eel')
# user4 = User.create(name: 'Leewel', password: 'eel')
# user5 = User.create(name: 'Leewell', password: 'eel')

meme1 = Meme.create(user_id: 1, title: "debugging", your_meme: "Programmers are paid for chasing the bug")
meme2 = Meme.create(user_id: 2, title: "electrical eng", your_meme: "Follow my tips. Number 1 will shock you")
meme3 = Meme.create(user_id: 3, title: "cars", your_meme: "Buy a MOBIUS. It lasts mob years")
# meme4 = Meme.create(title: "", your_meme: "")
# meme5 = Meme.create(title: "", your_meme: "")
# meme6 = Meme.create(title: "", your_meme: "")
# meme7 = Meme.create(title: "", your_meme: "")
# meme8 = Meme.create(title: "", your_meme: "")


puts "✅ Done seeding!"
