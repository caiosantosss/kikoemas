class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.is_a?(User) ? scope.where(user: user) : scope.where(counselor: user)
    end
  end

  def index?
    user
  end

  def show?
    user
  end

  def create?
    user
  end

  def new?
    create?
  end

  def update?
    user
  end
end
