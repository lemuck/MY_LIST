class UserSessionsController < Devise::SessionsController
  def create
    super do |ressource|
      @basket = Basket.new(user_id: current_user.id, total_price: 0)
      @basket.save
    end
  end
end
