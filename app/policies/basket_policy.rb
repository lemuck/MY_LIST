class BasketPolicy < ApplicationPolicy
  
  def show?
    false
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
