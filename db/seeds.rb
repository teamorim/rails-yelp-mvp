# This file should ensure the existence of records required to run the application in every
# environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point
# in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database
# with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

pirilampo = { name: "Pirilampo", address: "Alvalade", category: "french" }
pomar = { name: "Pomar", address: "Alvalade", category: "french" }
padaria_portuguesa = {name: "Padaria Portuguesa", address: "Alvalade", category: "italian" }
sem_nome = { name: "Sem Nome", address: "Alvalade", category: "french" }
everest = { name: "Everest", address: "Alvalade", category: "italian" }

[pirilampo, pomar, padaria_portuguesa, sem_nome, everest].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
