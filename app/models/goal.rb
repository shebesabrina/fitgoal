class Goal < ApplicationRecord
  has_many :plans

  validates_presence_of :distance
  validates_presence_of :skill_level
end
