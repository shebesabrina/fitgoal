class CreateUserPlanDays < ActiveRecord::Migration[5.2]
  def change
    create_table :user_plan_days do |t|
      t.references :day, foreign_key: true
      t.references :user_plan, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
