class DetailBasketsController < ApplicationController
  def index
    @detail_baskets = DetailBasket.all
  end

  def new
    @new_detail_basket = DetailBasket.new
    @detail_basket.basket = current_basket
  end

  def create
    @detail_basket = DetailBasket.new(detail_basket_params)
    @detail_basket.basket = current_basket
    if @detail_basket.save
      redirect_to basket_path(current_basket)
    else
      render :new
  end

  def destroy
    @detail_basket = DetailBasket.find(params[:id])
    @detail_basket.destroy
    redirect_to basket_path
  end

  def edit
    @detail_basket = DetailBasket.find(params[:id])
  end

  def update
    @detail_basket = DetailBasket.find(params[:id])
    @detail_basket.update(detail_basket_params)
    redirect_to basket_path(current_basket)
  end

  private

  def detail_basket_params
    params.require(:detail_basket).permit(:ingredient_quantity, :ingredient_id, :ingredient_recipe_id)
  end
end
