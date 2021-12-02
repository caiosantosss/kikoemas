class ChangeColumnToDailyEmotions < ActiveRecord::Migration[6.0]
  def change
    change_column_default :daily_emotions, :emotion, from: 0, to: nil
  end
end
