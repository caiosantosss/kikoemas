class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user ? scope.where(user: user) : scope.where(counselor: counselor)
    end
  end

  def index?
    user || counselor
  end

  def show?
    raise
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
