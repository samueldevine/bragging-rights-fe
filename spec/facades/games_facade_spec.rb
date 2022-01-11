require 'rails_helper'

RSpec.describe GamesFacade do
  it 'creates a game made up of questions' do
    user = User.create!(uid: 123456, nickname: 'chazsimons', access_token: '123')
    game = GamesFacade.create_game

    expect(game).to be_a Game
    expect(game.questions.length).to eq 5
    expect(game.questions.first).to be_a Question
  end
end
