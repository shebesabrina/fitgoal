class Plan < ApplicationRecord
  has_many :user_plans
  has_many :users, through: :user_plans

  has_many :days
  def self.beginner_5k
    find(6).days
  end
end
