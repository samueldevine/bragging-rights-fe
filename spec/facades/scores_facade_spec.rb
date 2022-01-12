require 'rails_helper'

 RSpec.describe ScoresFacade do
   describe 'top scores' do
     it "displays top scores by location query params" do
       score = ScoresFacade.top_scores_by_location("city", "Denver")

       expect(score.first).to be_a(Score)
       #add more testing for score.first attributes
     end

     it "displays top scores by user query param" do
       score = ScoresFacade.top_scores_by_user(69)

       expect(score.first).to be_a(Score)
       #add more testing for score.first attributes
     end
   end
 end
