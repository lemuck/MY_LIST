class IngredientRecipesController < ApplicationController
  def create
    @ingredient_recipe = IngredientRecipe.new(params[:ingredient_recipe_params])
    @ingredient_recipe.save
  end

  private

  def ingredient_recipe_params
    params.require(:ingredient_recipe).permit(:ingredient_id, :recipe_id, :ingredient_quantity)
  end
end
