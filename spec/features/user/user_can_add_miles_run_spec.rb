require 'rails_helper'

describe 'User' do
  xit 'can add miles run to profile' do

    stub_request(:get, "http://api.openweathermap.org/data/2.5/weather?zip=80202&APPID=2a97df7339e39a99483db2008fa8e34b&units=imperial").
    to_return(body: File.open('./fixtures/openweatherapp.json'))

    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/dashboard'

    click_on 'Record Run'
    save_and_open_page

    fill_in 'Workout name', with: 'first run'
    fill_in 'Date', with: Date.today
    fill_in 'Distance', with: '5'

    click_on 'Save'

    expect(current_path).to eq('/dashboard')
    expect(page).to have_content('first run')
    expect(page).to have_content(Date.today)
    expect(page).to have_content('5 miles')
  end
end
