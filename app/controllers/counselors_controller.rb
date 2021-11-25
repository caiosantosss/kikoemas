class CounselorsController < ApplicationController
  def dashboard
    @counselor = current_counselor
    authorize current_counselor
  end

  def bookings
    @new_bookings = current_counselor.bookings.where('hour(created_at) = ?', Time.now.hour)
    @upcoming = current_counselor.bookings.where('start_time > ?', Time.now)
    @past = current_counselor.bookings.where('start_time < ?', Time.now)
  end
end
