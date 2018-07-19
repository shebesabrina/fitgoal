class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :user, foreign_key: true
      t.string :zip

      t.timestamps
    end
  end
end
