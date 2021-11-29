class UsersController < ApplicationController
  def dashboard
    @past_bookings = current_user.past_bookings
  end

  def show
    @user = User.find(params[:id])
    @past_bookings = @user.past_bookings
  end
end
