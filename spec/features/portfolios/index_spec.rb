require 'rails_helper'

feature 'Portfolios' do
  before do
    @applicant = create(:applicant)
    @portfolio = create(:portfolio, user_id: @applicant.id)
    sign_in_as(@applicant)
  end

  scenario 'index' do
    visit portfolios_path

    find('h1', text: 'Listing portfolios')
    within('tbody') do
      within('tr', match: :first) do
        find('td', match: :first, text: @portfolio.id)
      end
    end
  end

  after do
    sign_out_as_user
  end
end