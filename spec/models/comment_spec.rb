require 'rails_helper'

describe Comment do
  context 'validations' do
    before(:all) do
      @comment1 = create(:comment)
    end

    it 'is valid with valid attributes' do
      expect(@comment1).to be_valid
    end

    it 'is invalid without user_name' do
      comment2 = build(:comment, user_name: nil)
      expect(comment2).to_not be_valid
    end

    it 'is invalid without body content' do
      comment2 = build(:comment, body: nil)
      expect(comment2).to_not be_valid
    end

    it 'is invalid without idea' do
      comment2 = build(:comment2, idea_id: nil)
      expect(comment2).to_not be_valid
    end
  end
end