class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token, :authenticate_user_or_counselor!, only: [:home]
  # before_action :authenticate_user!

  def home
    @booking = Booking.new
    @counselors = Counselor.all
    @daily_emotion = DailyEmotion.new
  end
end
