require 'rails_helper'

RSpec.describe "New Game" do
  it 'displays first question' do
    visit new_game_path

    expect(current_path).to eq('/quiz')
    expect(page).to have_content("Question 1")
    expect(page).to have_content("Who is Batman?")
    expect(page).to have_content("Barry Allen")
    expect(page).to have_content("Bruce Wayne")
    expect(page).to have_content("Tony Stark")
    expect(page).to have_content("Clark Kent")
  end

  it 'can redirect to new question' do
    visit new_game_path

    click_link "Bruce Wayne"
    expect(current_path).to eq('/quiz')

    expect(page).to have_content("Question 2")
  end
end
