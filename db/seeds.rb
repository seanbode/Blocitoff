User.destroy_all
Item.destroy_all

5.times do
  User.create!(
  email: Faker::Internet.email,
  password: "password")
end

User.create!(
email: "seanpaulbode@gmail.com",
password: "ants0y0")

users = User.all

45.times do
  Item.create!(
  name: Faker::Lorem.sentence,
  user: users.sample,
  created_at: (Time.now - rand(1..12).days))
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
