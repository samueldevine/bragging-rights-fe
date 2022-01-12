require 'rails_helper'

 RSpec.describe ScoresFacade do
   describe 'Top Scores' do
     it "displays top scores by query param" do
       score = ScoresFacade.top_scores_by_location("city", "Denver")

       expect(score.first).to be_a(Score)
     end
   end
 end
