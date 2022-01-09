class GamesController < ApplicationController
  def index
    # high scores
  end

  def create
    # post a new game to the backend DB
    game = Game.new(game_params)
  end

  private

    def game_params
      params.require(:game).permit(:uid, :score, :city, :state, :country)
    end
end
