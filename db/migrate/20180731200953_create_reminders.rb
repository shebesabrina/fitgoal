class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :name
      t.string :phone_number
      t.datetime :time

      t.timestamps
    end
  end
end
