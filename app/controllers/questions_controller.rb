class QuestionsController < ApplicationController
  def show
    if params[:id] == 6
      render '/final_score'
    else
      @question = session[:questions][session[:questions_answered]]
      session[:questions_answered] += 1
    end
  end
end
