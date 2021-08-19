class Ingredient < ApplicationRecord
  has_many :ingredient_recipes
  has_one_attached :photo
  validates :name, :unit, presence: true
  validates :unit_price, presence: true, numericality: { only_float: true }

  include PgSearch::Model
  pg_search_scope :search_by_ingredient,
    against: [:name],
    using: {
      tsearch: { prefix: true }
    }
end
