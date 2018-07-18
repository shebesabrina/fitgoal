class UserPlan < ApplicationRecord
  belongs_to :user
  belongs_to :plans
end
