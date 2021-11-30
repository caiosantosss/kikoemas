class AddSuggestedToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :suggested, :boolean, default: false
  end
end
