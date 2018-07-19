class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
