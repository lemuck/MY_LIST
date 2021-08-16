class DetailBasketsController < ApplicationController
  before_action :set_detail_basket, only: [:destroy, :edit, :update]

  def index
    @detail_baskets = DetailBasket.where(basket_id: current_user.baskets)
    @basket = Basket.find(current_user.baskets.first.id)
  end

  def create
    if params[:recipe]
      @recipe = Recipe.find(params[:recipe])
      @recipe.ingredient_recipes.each do |ingredient_recipe|
        detail_basket = DetailBasket.new(ingredient_recipe_id: ingredient_recipe.id,
                                         ingredient_quantity: (ingredient_recipe.ingredient_quantity * @recipe.person_number))
        detail_basket.basket_id = current_user.baskets.first.id
        detail_basket.save
      end

      flash[:notice] = "#{@recipe.name} successfully added"
      redirect_to recipes_path

    else
      @ingredient = Ingredient.find(params[:detail_basket][:ingredient].to_i)
      detail_basket = DetailBasket.new(ingredient_id: @ingredient.id, ingredient_quantity: params[:detail_basket][:ingredient_quantity].to_i)
      detail_basket.basket_id = current_user.baskets.first.id
      detail_basket.save
      flash[:notice] = "#{@ingredient.name} successfully added"
      redirect_to ingredients_path
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








