class DetailBasketsController < ApplicationController
  before_action :set_detail_basket, only: [:destroy, :edit, :update]

  def index
    @detail_baskets = DetailBasket.where(basket_id: current_user.baskets)
  end

  def create
    if Recipe.find(params[:recipe])
      @recipe = Recipe.find(params[:recipe])
      @recipe.ingredient_recipes.each do |ingredient_recipe|
        detail_basket = DetailBasket.new(ingredient_recipe_id: ingredient_recipe.id,
                                         ingredient_quantity: (ingredient_recipe.ingredient_quantity * @recipe.person_number))
        detail_basket.basket_id = current_user.baskets.first.id
        detail_basket.save
      end

      flash[:alert] = "#{@recipe.name} successfully added"
      redirect_to recipes_path

    else
      @ingredient = Ingredient.find(params[:ingredient])
      detail_basket = DetailBasket.new(ingredient_id: @ingredient.id)
      detail_basket.basket = current_user.baskets.first.id
      if detail_basket.save
        flash[:success] = "#{@ingredient.name} successfully added"
      end
    end
  end

  def destroy
    if params[:id]
      @detail_basket.destroy
      redirect_to detail_baskets_path
    end
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








