class AddUserIdToReminders < ActiveRecord::Migration[5.2]
  def change
    add_reference :reminders, :user, foreign_key: true
    remove_column :reminders, :name
  end
end
