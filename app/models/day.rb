class Day < ApplicationRecord
  belongs_to :plan

  has_many :user_plan_days
  has_many :user_plans, through: :user_plan_days
end
