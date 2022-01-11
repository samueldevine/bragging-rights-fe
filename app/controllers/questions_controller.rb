class QuestionsController < ApplicationController
  def show
    last_question = session[:questions][session[:questions_answered] - 1]
    if session[:questions_answered] != 0
      if params[:commit] == last_question["correct_answer"]
        session[:correct_answers] += 1
      end
    end

    if session[:questions_answered] == 5
      redirect_to '/final_score'
    else
      @question = session[:questions][session[:questions_answered]]
      session[:questions_answered] += 1
    end
  end
end
