class DetailBasket < ApplicationRecord
  belongs_to :ingredient_recipe, optional: true
  belongs_to :ingredient, optional: true
  belongs_to :basket, optional: true
end
