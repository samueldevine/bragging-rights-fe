require 'rails_helper'

RSpec.describe 'Leaderboard', type: :feature do
  before do
    visit '/leaderboard'
  end

  it 'has a leaderboard' do
    save_and_open_page
    
    expect(page).to have_content 'Leaderboard'
  end
end