class AddColumnsToCounselors < ActiveRecord::Migration[6.0]
  def change
    add_column :counselors, :first_name, :string
    add_column :counselors, :last_name, :string
    add_reference :counselors, :school, null: false, foreign_key: true
  end
end
