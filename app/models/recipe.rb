class Recipe < ApplicationRecord
  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes

  validates :name, :description, presence: true
end
