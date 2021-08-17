class BasketsController < ApplicationController
  before_action :set_basket, only: [:show]

  def index
  end

  def update
  end

  def show
            raise
    # if ingredient_recipe

  end

  private

  def set_basket
    @basket = Basket.find(current_user.baskets.first.id)
  end
end






