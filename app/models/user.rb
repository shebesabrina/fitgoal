class User < ApplicationRecord
  has_secure_password
  has_many :locations
  has_many :user_plans
  has_many :plans, through: :user_plans

  validates_presence_of :name
  validates_presence_of :email, uniqueness: true
  validates_presence_of :password_digest, require: true

  # def self.authenticate(email, password)
  # end

  def zip
    binding.pry
    locations.first.zip
  end
end
