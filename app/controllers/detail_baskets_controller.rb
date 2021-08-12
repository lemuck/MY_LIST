class DetailBasketsController < ApplicationController
  before_action :set_detail_basket, only: [:destroy, :edit, :update]

  def index
    @detail_baskets = DetailBasket.where(basket_id: current_user.baskets)
  end

  def create
    if Recipe.find(params[:recipe])
      @recipe = Recipe.find(params[:recipe])
      @recipe.ingredient_recipes.each do |ingredient_recipes|
        detail_basket = DetailBasket.new(ingredient_recipe_id: ingredient_recipes.id, ingredient_quantity: ingredient_recipes.ingredient_quantity)
        detail_basket.basket_id = current_user.baskets.first.id
        detail_basket.save
      end
      
    flash[:alert] = "Recipe successfully added"
    redirect_to recipes_path

    else
      @detail_basket = Ingredient.find(params[:ingredient])
      detail_basket = DetailBasket.new(ingredient_id: detail_basket.id)
      detail_basket.basket = current_user.basket
      if detail_basket.save
        flash[:success] = "Ingredient successfully added"
      end
    end
  end

  def destroy
    @detail_basket.destroy
    redirect_to basket_path
  end

  def edit
  end

  def update
    @detail_basket.update(detail_basket_params)
    redirect_to basket_path(current_basket)
  end

  private

  def set_detail_basket
    @detail_basket = DetailBasket.find(params[:id])
  end
end








