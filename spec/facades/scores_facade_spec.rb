require 'rails_helper'

 RSpec.describe ScoresFacade do
   describe 'Top Scores' do
     it "displays top scores by query param" do
       score = ScoresFacade.top_scores_by_location("city", "Denver")
       # user = ScoresFacade.top_scores(69)
       expect(score.first).to be_a(Score)
     end
   end
 end
