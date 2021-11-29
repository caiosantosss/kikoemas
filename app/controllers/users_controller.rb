class UsersController < ApplicationController
  def dashboard
  end

  def show
    @user = current_user
    @past_bookings = @user.past_bookings
  end
end
