require 'rails_helper'

RSpec.describe GamesFacade do
  it 'creates a game made up of questions' do
    user = User.create!(uid: 123_456, nickname: 'chazsimons',
                        access_token: '123')
    game = GamesFacade.get_questions

    expect(game.length).to eq 5
    expect(game.first).to be_an_instance_of Question
  end
end
