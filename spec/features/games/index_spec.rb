require 'rails_helper'

RSpec.describe "Games Index Page" do
  it 'can display top scores by location' do
    score = Score.new(
                      city:"Denver",
                      country:"United States",
                      game_time:nil,
                      score:49650,
                      state:"Colorado",
                      user_id:1479496123915988993
)
  user_1 = User.create(
    uid: '362111173',
    nickname: 'worldtraveler',
    access_token: "1451281232570970119-rDbOK1dJrCA49v5TJ3p1HmQj7GRow1"
  )

  user_2 = User.create(
    uid: '462111173',
    nickname: 'floridaman',
    access_token: "1451281232570970119-rDbOK1dJrCA49v5TJ3p1HmQj7GRow2"
  )
  user_3 = User.create(
    uid: '1479496123915988993',
    nickname: 'floridaman',
    access_token: "1451281232570970119-rDbOK1dJrCA49v5TJ3p1HmQj7GRow2"
  )
    visit leaderboard_path

    click_button "City"
    expect(page).to have_content("Scores for city")
    expect(page).to have_content(:city)
    click_button "State"
    expect(page).to have_content("Scores for state")
    expect(page).to have_content(:state)
    click_button "Country"
    expect(page).to have_content("Scores for country")
    expect(page).to have_content(:country)
  end
end
