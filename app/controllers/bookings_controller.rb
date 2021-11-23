class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
    authorize @bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @message = Message.new
    authorize @booking
    @counselor = @booking.counselor
    @user = @booking.user
  end

  def new
  end

  def create
    @booking = Booking.new
    @booking.counselor = Counselor.all[0]
    @booking.user = current_user
    @booking.in_session = params[:booking][:in_session] == 'true'
    @booking.emergency = params[:booking][:emergency] == 'true'
    authorize @booking
    if @booking.save
      if @booking.emergency == true
        redirect_to booking_path(@booking)
      else
        redirect_to bookings_path
      end
    else
      redirect_to root_path
    end
  end

  def update
  end
end
