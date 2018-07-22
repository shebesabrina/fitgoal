require 'rails_helper'

describe 'Visitor' do
  it 'should allow visitor to sign up' do
    stub_request(:get, "http://api.openweathermap.org/data/2.5/weather?zip=80202&APPID=2a97df7339e39a99483db2008fa8e34b&units=imperial").
    to_return(body: File.open('./fixtures/openweatherapp.json'))

    visit '/'

    click_on "Sign Up to Be a User"
    expect(current_path).to eq(new_user_path)
    name = 'Homer Simpson'
    password = 'Doh!'

    fill_in :user_name, with: 'Homer Simpson'
    fill_in :user_password, with: 'Doh!'
    fill_in :user_password_confirmation, with: 'Doh!'
    fill_in :user_email, with: 'homer@thesimpsons.doh'

    click_on "Create User"
    expect(page).to have_content(User.last.name)
    expect(page).to have_content("Welcome, Homer Simpson!")
    expect(current_path).to eq('/dashboard')
  end

  it 'should allow user to log in' do
    homer = create(:user)
    visit '/'
    click_on 'I already have an account'
    expect(current_path).to eq(login_path)

    fill_in 'email', with: 'homer@thesimpsons.doh'
    fill_in 'password', with: 'Doh!'

    click_on 'Log In'

    # save_and_open_page
    expect(current_path).to eq('/dashboard')
    expect(page).to have_content('Welcome, Homer Simpson')
  end

  it 'should allow user to log out' do
    homer = create(:user)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(homer)
    visit user_path(homer)

    expect(page).to have_link('Log out')

    click_on 'Log out'

    expect(current_path).to eq(root_path)
  end
end
