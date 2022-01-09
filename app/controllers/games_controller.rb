class GamesController < ApplicationController
  def index
    # high scores
  end

  def new
    @game = Game.new
  end

  def create
    # post a new game to the backend DB
    @game = Game.new!(game_params)

    render 'show'
  end

  def show
    # just for testing
    params = { score: 50000 }
    @game = Game.new(params)
  end

  private

  def game_params
    params.require(:game).permit(:uid, :score, :city, :state, :country, :correct, :time)
  end
end
