class BasketsController < ApplicationController
  before_action :set_basket, only: [:show]

  def index
  end

  def update
  end

  def show
    #@sorted_details = @basket.ingredients.sort_by { |ingredient| ingredient.category }

    
    @final_basket = []
    @basket.detail_baskets.each do |ingredient|
      if @final_basket.any?{ |ing| ing[:name] == ingredient.name }
        
        ingredi = @final_basket.select { |ingre| ingre[:name] == ingredient.name }
        ingredi[0][:quantity] += ingredient.quantity
      else
        final_ingredient = { name:       ingredient.name,
                             unit:       ingredient.unit,
                             unit_price: ingredient.unit_price,
                             category:   ingredient.category,
                             quantity:   ingredient.quantity
                         }
        @final_basket << final_ingredient
      end  
    end  
  end

  private

  def set_basket
    @basket = Basket.find(current_user.baskets.first.id)
  end
end






