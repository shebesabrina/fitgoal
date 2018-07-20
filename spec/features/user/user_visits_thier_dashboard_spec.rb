require 'rails_helper'

describe 'User signed in' do
  it 'should allow user to see their dashboard page' do

    stub_request(:get, "http://api.openweathermap.org/data/2.5/weather?zip=80202&APPID=2a97df7339e39a99483db2008fa8e34b&units=imperial").
    to_return(body: File.open('./fixtures/openweatherapp.json'))

    user = create(:location).user

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/dashboard'

    expect(current_path).to eq('/dashboard')
    within('.weather') do

      expect(page).to have_content('93')
      expect(page).to have_content('clear sky')
      expect(page).to have_content('Denver')
    end
  end
end
