require 'rails_helper'

describe 'User' do
  it 'can add miles run to profile' do
    user = create(:user)

    visit '/dashboard'

    click_on 'Record Miles'

    fill_in 'Workout name', with: 'first run'
    fill_in 'Date', with: Date.today
    fill_in 'Distance', with: '5'
  end
end
