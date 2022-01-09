require 'rails_helper'

RSpec.describe 'Leaderboard', type: :feature do
  before do
    visit '/leaderboard'
  end

  it 'has a leaderboard' do
    
    expect(page).to have_content 'User'
    expect(page).to have_content 'Score'
  end

  it 'has buttons for region' do
    expect(page).to have_content 'City'
    expect(page).to have_content 'State'
    expect(page).to have_content 'Country'
    expect(page).to have_content 'World'
  end
end
