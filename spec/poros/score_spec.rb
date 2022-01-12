require 'rails_helper'

 RSpec.describe Score do
   it "exists" do
     score = Score.new(score: 100,
                user_id: 1,
                game_time: 1.5,
                city: "Denver",
                state: "CO",
                country: "USA")

    expect(score).to be_an_instance_of(Score)
   end
 end
