require 'rails_helper'

RSpec.describe "Games Index Page" do
  it 'can display top scores by location' do
    visit leaderboard_path

    click_button "City"
    expect(page).to have_content("Scores for city")
    click_button "State"
    expect(page).to have_content("Scores for state")
    click_button "Country"
    expect(page).to have_content("Scores for country")
  end
end
