class RenameColumnDateinUserPlanDaysToRunDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_plan_days, :date, :run_date
  end
end
