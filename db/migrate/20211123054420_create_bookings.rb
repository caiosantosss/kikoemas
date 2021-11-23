class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :date
      t.integer :mode, default: 0
      t.text :note
      t.integer :rating
      t.boolean :in_session, default: true
      t.references :user, null: false, foreign_key: true
      t.references :counselor, null: false, foreign_key: true
    end
  end
end
