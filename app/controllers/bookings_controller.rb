class BookingsController < ApplicationController
  after_action :set_as_read, only:[:index]
  def index
    @bookings = policy_scope(Booking)
    authorize @bookings
    @new_bookings = current_user.bookings.where("student_read = ?", false)
    @upcoming = current_user.bookings.where('start_time > ?', Time.now).sort_by(&:start_time)
    @past = current_user.bookings.where('start_time < ?', Time.now).sort_by(&:start_time).reverse
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
    @booking.user = current_user if current_user
    @booking.counselor = current_counselor if current_counselor
    if params[:booking][:emergency] == 'true'
      @booking.counselor = Counselor.all.first
      @booking.start_time = Time.now
      @booking.end_time = (@booking.updated_at)
    # else
      # @booking.end_time = (@booking.start_time + 3600)
    end
    authorize @booking
    if @booking.save
      if @booking.emergency == true
        redirect_to booking_path(@booking)
      elsif current_counselor
        sweetalert_success("Invitation has been sent to the student.", "Sent!", persistent: "Done")
        # flash[:notice] = "Invitation has been sent to the student"
        redirect_to user_path(@booking.user)
      else
        redirect_to bookings_path
      end
    else
      redirect_to root_path
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @counselors = Counselor.all
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    if @booking.suggested
      redirect_to bookings_path
    elsif current_user
      return redirect_to params[:redirect][:path] if params[:redirect]

      redirect_to booking_path(@booking)
    else
      redirect_to counselor_bookings_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:counselor_id, :start_time, :end_time, :in_session, :emergency, :rating, :note, :suggested, :user_id)
  end

  def set_as_read
    current_user.bookings.update_all(student_read: true)
  end
end
