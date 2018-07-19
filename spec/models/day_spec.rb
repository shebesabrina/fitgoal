require 'rails_helper'

RSpec.describe Day, type: :model do

  it { should belong_to :plan }
end
