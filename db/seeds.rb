# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
la_friterie = { name: "La Friterie", address: "315 rue du lion, Paris", category: "belgian"}
cho_food = { name: "Cho Food", address: "56A ", category: "chinese"}
pizza_east = { name: "Pizza East", address: "56A bridge gate street, London", category: "italian"}
sushi_shop = { name: "Sushi shop", address: "32 rue du peintre, Marseille ", category: "japanese"}
[dishoom, pizza_east, la_friterie, cho_food, sushi_shop].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
