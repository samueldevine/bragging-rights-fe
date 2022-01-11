require 'rails_helper'

RSpec.describe GamesService do
  it 'establishes a Faraday connection' do
    expect(GamesService.conn).to be_a Faraday::Connection
  end

  it 'gets questions from the back end' do
    game = GamesService.get_game
    first_question = game[:data].first[:attributes]

    expect(game).to be_a Hash
    expect(first_question).to have_key :question
    expect(first_question).to have_key :correct_answer
    expect(first_question).to have_key :answers
    expect(first_question[:answers]).to be_an Array
    expect(first_question[:answers].length).to eq 4
    expect(first_question[:answers]).to include(first_question[:correct_answer])
  end
end
