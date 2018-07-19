require 'rails_helper'

RSpec.describe Goal, type: :model do
  it { should validate_presence_of :distance }
  it { should validate_presence_of :skill_level }

  it { should have_many :plans }
end
