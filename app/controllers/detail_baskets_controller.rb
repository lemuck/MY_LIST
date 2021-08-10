class DetailBasketsController < ApplicationController
  before_action :set_detail_basket

  def index
    @detail_baskets = DetailBasket.all
  end

  def create
    @detail_basket = DetailBasket.new(detail_basket_params)
    @detail_basket.basket = current_basket
    if @detail_basket.save
      redirect_to basket_path(current_basket)
    else
      render :new
    end
  end

  def destroy
    @detail_basket.destroy
    redirect_to basket_path
  end

  def edit
  end

  def update
    @detail_basket.update(detail_basket_params)
    redirect_to basket_path(current_basket)
  end

  private

  def set_detail_basket
    @detail_basket = DetailBasket.find(params[:id])
  end

  def detail_basket_params
    params.require(:detail_basket).permit(:ingredient_quantity, :ingredient_id, :ingredient_recipe_id)
  end
end
