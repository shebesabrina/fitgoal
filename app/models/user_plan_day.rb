class UserPlanDay < ApplicationRecord
  belongs_to :day
  belongs_to :user_plan

  validates_presence_of :run_date
end
