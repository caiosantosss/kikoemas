class CounselorsController < ApplicationController
  after_action :set_as_read, only:[:bookings]
  def dashboard
    @counselor = current_counselor
    authorize current_counselor
  end

  def bookings
    @new_bookings = current_counselor.bookings.where("counselor_read = ?", false)
    @upcoming = current_counselor.bookings.where('start_time > ?', Time.now)
    @past = current_counselor.bookings.where('start_time < ?', Time.now)
  end

  def set_as_read
    current_counselor.bookings.update_all(counselor_read: true)
  end
end
