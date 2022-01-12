require 'rails_helper'

RSpec.describe "Games Index Page" do
  it 'can display top scores by location' do
    visit leaderboard_path

    expect(page).to have_content("")
  end
end
