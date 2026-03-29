# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'net/http'
require 'json'

puts "Buscando dados da PokéAPI..."

(1..151).each do |id|
  uri = URI("https://pokeapi.co/api/v2/pokemon/#{id}")
  response = Net::HTTP.get(uri)
  data = JSON.parse(response)

  Pokedex.create!(
    pokedex_id: id,
    name: data['name'].capitalize,
    pk_type: data['types'].map { |t| t['type']['name'].capitalize }.join('/')
  )
  puts "Capturado: #{data['name'].capitalize}"
end