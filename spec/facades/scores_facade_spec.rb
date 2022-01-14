require 'rails_helper'

 RSpec.describe ScoresFacade do
   describe 'top scores' do
     it "displays top scores by location query params" do
       score = ScoresFacade.top_scores_by_location("city", "69.162.242.247")
       expect(score[0]).to be_an_instance_of(Score)
       #add more testing for score.first attributes
     end

     it "displays top scores by user query param" do
       score = ScoresFacade.top_scores_by_user(908792900)

       expect(score[0]).to be_an_instance_of(Score)
       #add more testing for score.first attributes
     end
   end
 end
