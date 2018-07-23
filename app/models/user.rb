class User < ApplicationRecord
  has_secure_password :validations => false
  has_many :locations
  has_many :user_plans
  has_many :plans, through: :user_plans

  validates_presence_of :name
  validates_presence_of :email, uniqueness: true

  # def self.authenticate(email, password)
  # end

  def zip
    unless locations.empty?
      locations.first.zip
    else
      '80202'
    end
  end
end
