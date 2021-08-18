class BasketsController < ApplicationController
  before_action :set_basket, only: [:show]

  def index
  end

  def update
  end

  def show
    @sorted_details = @basket.ingredients.sort_by { |ingredient| ingredient.category }

    #@sorted_details = @basket.detail_baskets.sort_by { |detail| detail.ingredient.category || detail.ingredient_recipe.category }
  end

  def gif
    sleep(3)
    redirect to
  end
  # def if_statement(detail)
  #   if detail.ingredient_recipe
  #     @quantity = detail.ingredient_recipe.ingredient_quantity
  #     @ingredient_category = detail.ingredient_recipe.ingredient.category
  #     @name = detail.ingredient_recipe.ingredient.name
  #   else
  #     @quantity = detail.ingredient_quantity
  #     @ingredient_category = detail.ingredient.category
  #     @name = detail.ingredient.name
  #   end
  # end

  private

  def set_basket
    @basket = Basket.find(current_user.baskets.first.id)
  end
end
