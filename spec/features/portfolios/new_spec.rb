require 'rails_helper'

feature 'Portfolios' do
  before do
    @applicant = create(:applicant)
    @job = create(:job)
    sign_in_as(@applicant)
  end

  scenario 'new' do
    visit "/portfolios/new?job_id=#{@job.id}"
    find('h4', text: @job.title)

    find('#portfolio_earliest_entry', visible: false).set('01/05/2019')
    fill_in 'portfolio_salary_expectations', with: '45.000'

    attach_file('portfolio_documents', File.absolute_path('spec/support/uploads/cv.pdf'))
    find_button('Create Portfolio').click

    find('h1', text: 'Listing portfolios')
    expect(current_path).to match(portfolios_path)
  end

  after do
    sign_out_as_user
  end
end