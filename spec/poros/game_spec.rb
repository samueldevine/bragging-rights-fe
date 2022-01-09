require 'rails_helper'

RSpec.describe Game do
  it 'exists' do
    game = Game.new(score: 5000)

    expect(game).to be_a Game
  end
end
