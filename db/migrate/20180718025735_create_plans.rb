class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.references :goals, foreign_key: true
      t.timestamps
    end
  end
end
