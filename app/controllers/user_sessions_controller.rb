class UserSessionsController < Devise::SessionsController
  # before_commit :create_basket

  # def create_basket
  #   @basket = Basket.new(user_id: current_user.id, total_price: 0)
  #   @basket.save
  # end

  def show
    @user = current_user
  end
end
