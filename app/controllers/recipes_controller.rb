class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show update]

  before_action :set_recipe, only: %i[show update edit]
  before_action :set_user, only: %i[index show]

  def show
    # authorize @recipe
  end

  def index
    if params[:query].present?
      @recipes = Recipe.search_by_recipe(params[:query])
    else
      @recipes = Recipe.all
    end
    # authorize @recipes
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
    @recipe.ingredient_recipes.build
    # authorize @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:success] = "Recipe successfully created"
      redirect_to recipe_path(@recipe)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    # authorize @recipe
  end

  def update
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
    # authorize @recipe
  end

  private

  def set_user
    @user = current_user
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :person_number, :query, :photo,
                                   ingredient_recipe_ids: [],
                                   ingredient_recipes_attributes: %i[id recipe_id ingredient_id ingredient_quantity])
  end
end
