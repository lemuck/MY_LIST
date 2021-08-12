class BasketsController < ApplicationController
  before_action :set_basket, only: [:show]

  # => It's inside users controller
  def create
    @basket = Basket.new(user_id: current_user, total_price: 0)
    @basket.save
    redirect_to
  end
  # <=
  def update
  end

  def show
    @detail_baskets = @basket.detail_baskets
  end

  private

  def set_basket
    @basket = Basket.find(current_user.baskets.first.id)
  end
end






