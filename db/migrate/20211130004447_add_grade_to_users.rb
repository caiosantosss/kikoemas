class AddGradeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :grade, :integer
  end
end
