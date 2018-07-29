require 'rails_helper'
 describe 'As a registered user' do
   it 'allows user to choose a workout goal' do
     stub_request(:get, "http://api.openweathermap.org/data/2.5/weather?zip=80202&APPID=2a97df7339e39a99483db2008fa8e34b&units=imperial").
     to_return(body: File.open('./fixtures/openweatherapp.json'))

     user = create(:location).user

     allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

     visit '/dashboard'

     click_on 'Add a goal'

     expect(current_path).to eq(new_goal_path)
     end
   end
 end
