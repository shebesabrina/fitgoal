class UserPlanDay < ApplicationRecord
  belongs_to :days
  belongs_to :user_plans
end
