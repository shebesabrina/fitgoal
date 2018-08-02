require 'rails_helper'

describe 'Registered user' do
  it 'Allows user to set reminders' do

    stub_request(:get, "http://api.openweathermap.org/data/2.5/weather?zip=80202&APPID=2a97df7339e39a99483db2008fa8e34b&units=imperial").
    to_return(body: File.open('./fixtures/openweatherapp.json'))
    # plan = Plan.days

    user = create(:location).user

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/dashboard'

    click_on 'Add a Workout Plan'

    expect(current_path).to eq(new_user_plan_path)
    # save_and_open_page
    select('beginner_5k', :from => 'plan_id')
    find("#plan_id").select("beginner_5k")
    click_on "Submit"

    expect(page).to have_link("Set up reminders?")

    click_on "Set up reminders?"

    fill_in :reminder_phone_number, with: '9703792924'

    select '6 am', from => 'reminder[set_at]'

    click_on 'Create Reminder'

    expect(page).to have_content('Reminder was successfully created.')
    epect(page).to have_content(user.name)
    epect(page).to have_content('9703792924')
    epect(page).to have_content('6 am')
  end
end
