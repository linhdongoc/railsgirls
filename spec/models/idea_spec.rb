require 'rails_helper'

describe Idea do
  context 'validations' do
    before(:all) do
      @idea1 = create(:idea)
    end

    it 'is valid with valid attributes' do
      expect(@idea1).to be_valid
    end

    it 'is invalid without name' do
      idea2 = build(:idea, name: nil)
      expect(idea2).to_not be_valid
    end

    it 'is valid without description' do
      idea2 = build(:idea, description: nil)
      expect(idea2).to be_valid
    end
  end
end
