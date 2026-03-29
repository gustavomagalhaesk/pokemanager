json.extract! pokedex, :id, :pokedex_id, :name, :pk_type, :created_at, :updated_at
json.url pokedex_url(pokedex, format: :json)
