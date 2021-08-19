class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:newhome, :home, :category]

  def home
    @recipes = Recipe.all
  end

  def my_list
    @basket = Basket.find(current_user.baskets.first.id)
    @recipes = Recipe.all
    @sorted_details = @basket.detail_baskets.sort_by { |ingredient| ingredient.ingredient_item.category }
    @final_basket = []
    @sorted_details.each do |ingredient|
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
end
