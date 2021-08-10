class DetailBasket < ApplicationRecord
  belongs_to :ingredient_recipe, dependent: destroy
  belongs_to :ingredient, dependent: destroy
  belongs_to :basket, dependent: destroy
end
