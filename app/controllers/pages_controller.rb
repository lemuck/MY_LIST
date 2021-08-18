class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:newhome, :home, :category, :my_list]

  def home
    @recipes = Recipe.all
  end
end
