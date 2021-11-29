class UsersController < ApplicationController
  def dashboard
  end

  def show
    @user = User.find(params[:id])
    @past_bookings = @user.past_bookings
  end
end
