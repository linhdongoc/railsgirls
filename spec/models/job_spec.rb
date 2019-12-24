require 'rails_helper'

describe Job do
  context 'validations' do
    it 'is valid with valid attributes' do
      job1 = build(:job)
      expect(job1).to be_valid
    end

    it 'should uniqueness with deleted' do
      job1 = create(:job, title: 'Job1')
      job1.destroy
      job2 = build(:job, title: 'Job1')
      expect(job2).not_to be_valid
    end
  end
end
