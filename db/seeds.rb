# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do |i|
  Room.create(status: 1, number: 100*i+1, daily_rate: rand(50000..200000))
  Room.create(status: 1, number: 100*i+2, daily_rate: rand(50000..200000))
end

20.times do |i|
  Guest.create(name: Faker::DragonBall.character, loyalty_tier: rand(1..5))
end
