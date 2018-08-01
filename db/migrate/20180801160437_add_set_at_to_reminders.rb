class AddSetAtToReminders < ActiveRecord::Migration[5.2]
  def change
    add_column :reminders, :set_at, :string
  end
end
