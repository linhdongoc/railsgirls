require 'rails_helper'

describe Idea do
  context 'validations' do
    before(:all) do
      @idea1 = create(:idea)
    end

    it 'is valid with valid attributes' do
      expect(@idea1).to be_valid
    end

    it 'has no comment' do
      expect(@idea1.comments.length).to be(0)
    end

    it 'is invalid without name' do
      idea2 = build(:idea, name: nil)
      expect(idea2).to_not be_valid
    end

    it 'is valid without description' do
      idea2 = build(:idea, description: nil)
      expect(idea2).to be_valid
    end

    it 'has two comments' do
      idea3 = create(:idea_with_comments)
      expect(idea3.comments.length).to be(2)
    end
  end
end
