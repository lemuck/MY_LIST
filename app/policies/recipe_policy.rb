class RecipePolicy < ApplicationPolicy

  def show?
    true
  end

  def index?
    true
  end

  def new?
    current_user.moderator
  end

  def update?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end