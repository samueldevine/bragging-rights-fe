class GamesController < ApplicationController
  def index
    # high scores
  end

  def new

  end

  def create
    game = GamesFacade.create_game(session[:user_id])
    # question ids are being set to 1-5 by the BE
    redirect_to game_question_path(game.id, 1)
  end

  def show
    # just for testing
    params = { score: 50000 }
    @game = Game.new(params)
  end

  def update
    # make sure formatting is perfect here so that correct answers will be registered
    # correct answer
    if @game.questions[params[:id]].correct_answer == params[:answer]
      @game.score += 500
      @game.correct += 1
    end

    @game.questions.shift

    render "/questions/#{params[:id]+1}"
  end

  private

  def game_params
    params.require(:game).permit(:uid, :score, :city, :state, :country, :correct, :time)
  end
end
