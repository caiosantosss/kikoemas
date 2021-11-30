class AddClassToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :classroom, :string
  end
end
