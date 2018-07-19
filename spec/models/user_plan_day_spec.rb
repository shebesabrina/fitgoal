require 'rails_helper'

RSpec.describe UserPlanDay, type: :model do
  it { should validate_presence_of :run_date }

  it { should belong_to :user_plan }
  it { should belong_to :day }
end
