class UsersController < ApplicationController
  def dashboard
  end

  def most_recent_past_booking(user)
    past = user.bookings.where('start_time < ?', Time.now)
    return past.map { |booking| Time.now - booking.start_time }.min
  end
end
