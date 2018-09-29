require 'rails_helper'

describe User do
  context 'validations' do
    before(:all) do
      @user1 = create(:user)
    end

    it 'is valid with valid attributes' do
      expect(@user1).to be_valid
    end

    it 'is invalid without an email' do
      user2 = build(:random_user, email: nil)
      expect(user2).to_not be_valid
    end

    it 'has unique email' do
      user2 = build(:random_user)
      expect(user2).to be_valid
    end

    it 'is invalid without a password' do
      user2 = build(:random_user, password: nil)
      expect(user2).to_not be_valid
    end

    it 'is invalid when password is too short' do
      user2 = build(:random_user, password: 'test1')
      expect(user2).to_not be_valid
    end
  end
end