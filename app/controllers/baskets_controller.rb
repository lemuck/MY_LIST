class BasketsController < ApplicationController
  before_action :set_basket, only: [:show]

  # # => It's inside users controller
  # def create
  #   @basket = Basket.new(user_id: current_user, total_price: 0)
  #   @basket.save
  #   redirect_to
  # end
  # # <=
  def index
  end

  def update
  end

  def show
    # @basket.detail_baskets.each do |detail|
    #   if detail.ingredient_recipes
    #     @ingredient = 
    #   end
    # end
  end

  private

  def set_basket
    @basket = Basket.find(current_user.baskets.first.id)
  end
end






