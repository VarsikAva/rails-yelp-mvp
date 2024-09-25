# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "0123456789", category: "french" },
  { name: "La Familia", address: "75010 Paris", phone_number: "0987654321", category: "italian" },
  { name: "Sushi Shop", address: "75011 Paris", phone_number: "0147258369", category: "japanese" },
  { name: "Peking", address: "75012 Paris", phone_number: "0147258368", category: "chinese" },
  { name: "Bruxelles", address: "75013 Paris", phone_number: "0147258367", category: "belgian" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
