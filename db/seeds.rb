puts "🌱 Seeding spices..."

User.create({username: "Aaron", password: "123", bio:'ok this is an application. Welcome to my application. Welcome to this application.'})
User.create({username: 'mRose123', password: 'm293', bio: 'I like this application. It is useful'})
User.create({username: 'Pizzaface', password: 'pizza', bio: 'This is interesting'})
User.create({username: 'Loloo', password:'lol', bio: 'lololololololololololololololololololollolololol'})
User.create({username: 'TheTaskHunter', password:'password', bio: 'Hunting Tasks and Going Crazy'})
User.create({username: 'username', password: 'password', bio: 'bio'})



Update.create({comment:"Almost done!", task_id: 1, user_id: 1})
puts "✅ Done seeding!"
