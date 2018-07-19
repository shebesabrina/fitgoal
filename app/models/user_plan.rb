class UserPlan < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  validates_presence_of :start_date
end
