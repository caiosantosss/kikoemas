class AddCounselorReadToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :counselor_read, :boolean
  end
end
