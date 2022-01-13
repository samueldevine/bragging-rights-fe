require 'rails_helper'

 RSpec.describe Score do
   before :each do
     @score = Score.new(score: 10000,
       user_id: 1,
       game_time: 1.5,
       city: "Denver",
       state: "CO",
       country: "USA")
   end

   it "exists" do
    expect(@score).to be_an_instance_of(Score)
   end

   it 'has readable attributes' do
     expect(@score.score).to eq(10000)
     expect(@score.user_id).to eq(1)
     expect(@score.game_time).to eq(1.5)
     expect(@score.city).to eq("Denver")
     expect(@score.state).to eq("CO")
     expect(@score.country).to eq("USA")
   end
 end
