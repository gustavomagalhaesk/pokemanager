json.extract! pokemon, :id, :trainer_id, :pokedex_id, :level, :on_team, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
