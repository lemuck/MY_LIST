class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:newhome, :home, :category]

  def home
    @recipes = Recipe.all
  end
end
