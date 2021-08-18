class DetailBasket < ApplicationRecord
  belongs_to :ingredient_recipe, optional: true
  belongs_to :ingredient, optional: true
  belongs_to :basket, optional: true


  # def link_ingredient
  #   ingredient_id.nil? ? ingredient_recipe.ingredient : ingredient
  # end

  def quantity
    ingredient_id.nil? ? ingredient_recipe.ingredient_quantity : ingredient_quantity
  end

  def name
    ingredient_id.nil? ? ingredient_recipe.ingredient.name : ingredient.name
  end

  def unit
    ingredient_id.nil? ? ingredient_recipe.ingredient.unit : ingredient.unit
  end

  def unit_price
    ingredient_id.nil? ? ingredient_recipe.ingredient.unit_price : ingredient.unit_price
  end

  def category
    ingredient_id.nil? ? ingredient_recipe.ingredient.category : ingredient.category
  end

  def ingredient_item
    ingredient_id.nil? ? ingredient_recipe.ingredient : ingredient
  end
end
