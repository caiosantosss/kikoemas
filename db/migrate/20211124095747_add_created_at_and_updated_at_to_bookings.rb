class AddCreatedAtAndUpdatedAtToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :created_at, :datetime
    add_column :bookings, :updated_at, :datetime
  end
end
