class DetailBasket < ApplicationRecord
  belongs_to :ingredient_recipe
  belongs_to :ingredient
  belongs_to :basket
end
