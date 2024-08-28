# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
yummy = { name: "Yummy", address: "7 Boundary St, Franschoek", phone_number: "0213568933", category: "french" }
vendettas = { name: "Vendettas", address: "56 Shore St, Cape Town", phone_number: "0832568963", category: "italian" }
suki_thai = { name: "Suki Thai", address: "21 Bright St, Stellenbosch", phone_number: "0732566261", category: "chinese" }
genki_sushi = { name: "Genki Sushi", address: "10 Victoria St, Stellenbosch", phone_number: "0622569003",  category: "japanese" }
waffle_house = { name: "Waffle House", address: "42 Long St, Cape Town", phone_number: "0844528163", category: "belgian" }

[yummy, vendettas, suki_thai, genki_sushi, waffle_house].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
