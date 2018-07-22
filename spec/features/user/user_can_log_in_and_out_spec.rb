require 'rails_helper'

describe 'Visitor' do
  it 'should allow visitor to sign up' do
    visit '/'

  click_on "Sign Up to Be a User"
  expect(current_path).to eq(new_user_path)
  name = 'Homer Simpson'
  password = 'Doh!'

  fill_in 'user[name]', with: 'Homer Simpson'
  fill_in 'user[password]', with: 'Doh!'
  fill_in 'user[email]', with: 'homer@thesimpsons.doh'

  # save_and_open_page
  click_on "Create User"

  expect(page).to have_content("Welcome, Homer Simpson!")
  end
  it 'should allow user to log in' do
    homer = create(:user)
    visit '/'
    click_on 'I already have an account'
    expect(current_path).to eq(login_path)
    # save_and_open_page
    # binding.pry
    fill_in 'name', with: homer.name
    fill_in 'email', with: homer.email
    fill_in 'password', with: homer.password

    click_on 'Submit'

    expect(current_path).to eq(user_path)
    expect(page).to have_content('Welcome, Homer Simpson')

    it 'should allow user to log out' do
      homer = create(:user)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit user_path(user)

      expect(page).to have_link('Log out')

      click_on 'Log out'

      expect(current_path).to eq(root_path)
    end
  end
end
