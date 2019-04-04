require 'rails_helper'

describe Portfolio do
  context 'validations' do
    before(:all) do
      @portfolio1 = create(:portfolio)
    end

    it 'is valid with valid attributes' do
      expect(@portfolio1).to be_valid
    end
  end
end