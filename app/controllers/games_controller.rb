
class GamesController < ApplicationController
  def new
    session[:start_time] = Time.now
    session[:score] = 0
    session[:ip_address] = request.remote_ip
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
    ScoresFacade.record_score(@game)
  end

  def index
    ip = request.remote_ip
    if !params["geo_scope"].present?
      params["geo_scope"] = "world"
    end
    @scores = ScoresFacade.top_scores_by_location(params["geo_scope"], ip)
    if @scores
      if params["geo_scope"] == "city"
        @location = @scores.first.city
      elsif params["geo_scope"] == "state"
        @location = @scores.first.state
      elsif params["geo_scope"] == "country"
        @location = @scores.first.country
      else
        @location = params["geo_scope"].capitalize
      end
    end
  end

  private

  def game_params
    params.require(:game).permit(:uid, :score, :city, :state, :country, :correct, :time)
  end
end
