class BookingsController < ApplicationController
  after_action :set_as_read, only:[:index]
  def index
    @bookings = policy_scope(Booking)
    authorize @bookings
    @new_bookings = current_user.bookings.where("student_read = ?", false)
    @upcoming = current_user.bookings.where('start_time > ?', Time.now)
    @past = current_user.bookings.where('start_time < ?', Time.now)
  end

  def show
    @booking = Booking.find(params[:id])
    @message = Message.new
    authorize @booking
    @counselor = @booking.counselor
    @user = @booking.user
  end

  def new
    @booking = Booking.new
    authorize @booking
    @counselors = Counselor.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.mode = params[:booking][:mode].to_i
    @booking.user = current_user
    if params[:booking][:emergency] == 'true'
      @booking.counselor = Counselor.all.sample
      @booking.start_time = Time.now
    end
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
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
   if @booking.user == current_user
    redirect_to booking_path(@booking)
   else
     @booking.counselor == current_counselor
      redirect_to counselor_bookings_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:counselor_id, :start_time, :end_time, :in_session, :emergency, :rating, :note)
  end

  def set_as_read
    current_user.bookings.update_all(student_read: true)
  end
end
