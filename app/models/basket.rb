class Basket < ApplicationRecord
  belongs_to :user
  has_many :detail_baskets, dependent: :destroy
  # has_many :ingredients, through: :detail_baskets
  # has_many :ingredient_recipes, through: :detail_baskets
  # has_many :recipes, through: :ingredient_recipes
end
