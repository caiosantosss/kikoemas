class AddColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :emergency, :boolean
  end
end
