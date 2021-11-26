class PagesController < ApplicationController
  skip_before_action :authenticate_user_or_counselor!, only: [:home]
  # before_action :authenticate_user!

  def home
    @booking = Booking.new
    @counselors = Counselor.all
  end
end
