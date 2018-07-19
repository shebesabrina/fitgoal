require 'rails_helper'

RSpec.describe Plan, type: :model do
  it { should belong_to :goal }
end
