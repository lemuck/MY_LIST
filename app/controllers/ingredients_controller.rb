class IngredientsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @category = params[:category]
    if params[:query].present?
      @ingredients = Ingredient.search_by_ingredient(params[:query])
    elsif @category.present?
      @ingredients = Ingredient.where(category: @category)
    else
      @ingredients = Ingredient.all
    end
    @detail_basket = DetailBasket.new
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to ingredients_path(@ingredient)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to ingredients_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :unit_price, :unit, :category, :query)
  end
end
