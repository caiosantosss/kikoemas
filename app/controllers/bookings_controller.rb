class BookingsController < ApplicationController
  def index
  end

  def show
    @booking = Booking.find([params[:id]])
    @counselor = @booking.counselor
    @user = @booking.user
  end

  def new
  end

  def create
    @booking = Booking.new
    @booking.counselor
    if @booking.save
  end

  def update
  end
end
