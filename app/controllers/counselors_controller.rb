class CounselorsController < ApplicationController
  def dashboard
    @counselor = current_counselor
    authorize current_counselor
  end

  def bookings
    @new_bookings = current_counselor.bookings.where("date_part('hour', created_at) = ?", Time.now.hour)
    @upcoming = current_counselor.bookings.where('start_time > ?', Time.now)
    @past = current_counselor.bookings.where('start_time < ?', Time.now)
    @today = current_counselor.bookings.where(start_time: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
    @this_week = current_counselor.bookings.where('start_time BETWEEN ? AND ?', Time.now.beginning_of_week, Time.now.end_of_week)
  end
end
