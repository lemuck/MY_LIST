class Ingredient < ApplicationRecord
  has_many :ingredient_recipes

  validates :name, :unit, presence: true
  validates :unit_price, presence: true, numericality: { only_float: true }
end
