class Item < ApplicationRecord
  has_many :inventories
  has_many :trainers, through: :inventories
end