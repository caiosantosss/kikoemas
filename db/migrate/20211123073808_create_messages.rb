class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :booking_id
      t.integer :messageable_id
      t.string :messageable_type

      t.timestamps
    end
  end
end
