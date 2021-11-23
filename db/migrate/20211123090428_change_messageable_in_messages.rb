class ChangeMessageableInMessages < ActiveRecord::Migration[6.0]
  def change
    rename_column :messages, :messageable_id, :sender_id
    rename_column :messages, :messageable_type, :sender_type
  end
end
