class AddStudentReadToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :student_read, :boolean, default: false
  end
end
