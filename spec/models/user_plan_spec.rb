require 'rails_helper'

RSpec.describe UserPlan, type: :model do
  it { should validate_presence_of :start_date }

  it { should belong_to :user }
  it { should belong_to :plan }
end
