class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_recipe, only: %i[show]
  before_action :set_user, only: %i[index]

  def show
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:success] = "Recipe successfully created"
      redirect_to @recipe
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def set_user
    @user = current_user
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end
end
