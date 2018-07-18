class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.float :length
      t.string :skill_level

      t.timestamps
    end
  end
end
