class DetailBasketsController < ApplicationController
  def index
    @detail_baskets = DetailBasket.all
  end

  def new
    @new_detail_basket = DetailBasket.new
    @detail_basket.ingredient = Ingredient.find(params[:ingredient])
    @detail_basket.ingredient_recipe = Ingredient.find(params[:ingredient_recipe])
    @detail_basket.basket = current_basket
  end

  def create
    @detail_basket = DetailBasket.new(params[:ingredient_quantity])
    @detail_basket.ingredient = Ingredient.find(params[:ingredient])
    @detail_basket.ingredient_recipe = Ingredient.find(params[:ingredient_recipe])
    @detail_basket.basket = current_basket
    @detail_basket.save
    redirect_to basket_path(current_basket)
  end

  def destroy
    @detail_basket = DetailBasket.find(params[:id])
    @detail_basket.destroy
    redirect_to basket_path
  end

  private

  def detail_basket_params
    params.require(:detail_basket).permit(:ingredient_quantity, :ingredient, :ingredient_recipe)
  end
end
