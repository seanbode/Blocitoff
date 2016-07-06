require 'Faker'

5.times do
  User.create!(
  email: Faker::Internet.email,
  password: "password")
end

users = User.all

45.times do
  Item.create!(
  name: Faker::Lorem.sentence,
  user: users.sample)
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
puts "#{User.first.email} was the last user generated."
puts "#{User.last.email} was the last user generated."

=begin
1.times do
  User.create!(
  email: "seanpaulbode@gmail.com",
  password: "ants0y0",
  item: item.sample)
end
=end
