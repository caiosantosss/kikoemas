class UsersController < ApplicationController
  def dashboard
    @past_bookings = current_user.past_bookings
  end

  def show
    @user = current_user
    @past_bookings = @user.past_bookings
  end
end
