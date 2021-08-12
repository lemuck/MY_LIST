class Recipe < ApplicationRecord
  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes

  validates :name, :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_recipe,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
