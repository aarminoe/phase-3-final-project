puts "🌱 Seeding spices..."

User.create({username: "Aaron", password: "123"})
Update.create({comment:"Almost done!", task_id: 1, user_id: 1})
puts "✅ Done seeding!"
