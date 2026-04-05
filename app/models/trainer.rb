class Trainer < ApplicationRecord
    has_many :pokemons, dependent: :destroy
    has_many :inventories
    has_many :items, through: :inventories
end
