require 'rails_helper'

feature 'User sessions' do
  before do
    @admin = create(:admin)
  end

  scenario 'sign in' do
    visit root_path
    assert_equal 200, status_code

    find('h2', text: 'Hey, good to see you again!')
    find('h5', text: 'Sign in to get going.')
    fill_in 'Login', with: @admin.email
    fill_in 'Password', with: @admin.password
    click_button 'Sign in'

    find('p#notice', text: 'Signed in successfully.')
  end

  scenario 'sign out' do
    sign_in_as(@admin)
    find_link(text: 'Logout', href: '/users/sign_out').click

    find('h2', text: 'Hey, good to see you again!')
    find('h5', text: 'Sign in to get going.')
  end
end