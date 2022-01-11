class GamesController < ApplicationController
  def index
    # high scores
  end

  # having trouble right now figuring out how to deal with creating a new game and passing that data to the right view
  # also: game ids can't be autoincremented unless we get a blank new game from the back end


#add conditional logic if no user_id
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

  end

  private

  def game_params
    params.require(:game).permit(:uid, :score, :city, :state, :country, :correct, :time)
  end
end
