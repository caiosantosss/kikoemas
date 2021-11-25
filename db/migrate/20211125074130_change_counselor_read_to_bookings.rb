class ChangeCounselorReadToBookings < ActiveRecord::Migration[6.0]
  def change
    change_column_default :bookings, :counselor_read, from: nil, to: false
  end
end
