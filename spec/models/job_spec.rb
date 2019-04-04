require 'rails_helper'

describe Job do
  context 'validations' do
    before(:all) do
      @job1 = create(:job)
    end

    it 'is valid with valid attributes' do
      expect(@job1).to be_valid
    end
  end
end