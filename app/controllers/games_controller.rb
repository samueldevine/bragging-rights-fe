
class GamesController < ApplicationController
  def index
    binding.pry
    #need to pass in location params
    ScoresFacade.top_scores_by_location()
  end

  def new
    session[:start_time] = Time.now
    session[:score] = 0
    session[:ip] = request.remote_ip
    session[:correct_answers] = 0
    session[:questions_answered] = 0
    session[:questions] = GamesFacade.get_questions
    redirect_to '/quiz'
  end

  def show
    start_time = session[:start_time].to_datetime.strftime('%s').to_i
    session[:time] = (Time.now.strftime('%s').to_i - start_time)
    session[:score] = (session[:correct_answers] * 10000 - (session[:time] * 50))
    @game = Game.new(session)
    test = Faraday.post('https://fast-inlet-74665.herokuapp.com/api/v1/scores',
      {score: @game}.to_json,
      headers = {'Content-Type' => 'application/json'}
    )
  end

  private

  def game_params
    params.require(:game).permit(:uid, :score, :city, :state, :country, :correct, :time)
  end
end
