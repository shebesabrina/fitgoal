class Plan < ApplicationRecord
  belongs_to :goal

  has_many :user_plans
  has_many :users, through: :user_plans
end
