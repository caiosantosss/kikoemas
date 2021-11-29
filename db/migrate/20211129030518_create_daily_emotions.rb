class CreateDailyEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_emotions do |t|
      t.datetime :date
      t.references :user, null: false, foreign_key: true
      t.integer :emotion, default: 0
    end
  end
end
