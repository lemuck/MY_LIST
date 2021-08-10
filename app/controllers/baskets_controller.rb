class BasketsController < ApplicationController
  before_action :set_basket, only: [:show]

  # => It's inside users controller
  # def create
  #   @basket = Basket.new(user_id: current_user, total_price: 0)
  #   @basket.save
  # end
  # <=
  def update

  end

  def show
    @detail_baskets = @basket.detail_baskets
  end

  private

  def set_basket
    @basket = Basket.find(params[:user][:basket])
    authorize @basket
  end
end






