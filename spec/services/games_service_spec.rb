require 'rails_helper'

RSpec.describe GamesService do
  it 'establishes a Faraday connection' do
    expect(GamesService.conn).to be_a Faraday::Connection
  end

  it 'gets a (QUESTION/GAME?) from the back end' do
    game = GamesService.get_game

    # revisit this test once we have a working endpoint
    expect(game).to be_a Hash
    expect(game).to have_key :data
  end

  # shouldn't need to test request.remote_ip method since it's build into rails
end
