module Games
  class QuestionsController < ApplicationController
    def show
      if params[:id] == 6
        render '/final_score'
      else
        @game =
      end
    end
  end
end
