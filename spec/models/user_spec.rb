require 'rails_helper'

describe User do
  it 'has an email and a password' do
    user = User.create!(email: 'user1@example.de', password: 'test123', password_confirmation: 'test123' )

    expect(user.email).to eq('user1@example.de')
    expect(user.password).to eq('test123')
  end
end