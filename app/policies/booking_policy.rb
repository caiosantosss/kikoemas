class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user || counselor
  end

  def show?
    user || counselor
  end

  def create?
    user || counselor
  end

  def new?
    create?
  end

  def update?
    user || counselor
  end
end
