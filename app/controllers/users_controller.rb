class UsersController < ApplicationController
  def dashboard
    @past_bookings = current_user.past_bookings
    @suggested_bookings = current_user.bookings.where(start_time: nil, suggested: true)
  end

  def show
    @user = User.find(params[:id])
    @past_bookings = @user.past_bookings
    @booking = Booking.new
  end
end
