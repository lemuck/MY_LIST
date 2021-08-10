class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
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
    params.require(:ingredient).permit(:name, :unit_price, :unit, :category)
  end
end
