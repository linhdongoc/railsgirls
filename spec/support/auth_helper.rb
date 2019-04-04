require 'rails_helper'

module AuthHelper
  def sign_in_as(user)
    visit root_path
    assert_equal 200, status_code

    find('h2', text: 'Hey, good to see you again!')
    find('h5', text: 'Sign in to get going.')
    fill_in 'Login', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end

  def sign_out_as_user
    find_link(text: 'Logout', href: '/users/sign_out').click
  end
end