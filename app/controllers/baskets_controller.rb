class BasketsController < ApplicationController
  before_action set_basket, only: [:show]

  def new
    @basket = Basket.new
  end

  def create
    @basket = Basket.new()
  end

  def show
    # [...]
  end

  private

  def set_basket
    @basket = Basket.find(params[:user_id])
    authorize @basket
  end
end
