class IngredientRecipesController < ApplicationController
  def create
    @ingredient_recipe = IngredientRecipe.new(params[:ingredient_recipe])
    @ingredient_recipe.save
  end

  private

  def ingredient_recipe_params
    params.require(:ingredient_recipe).permit(:ingredient_id, :ingredient_recipe_id)
  end
end
