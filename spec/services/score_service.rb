require 'rails_helper'

 RSpec.describe ScoreService do
   describe 'connection' do
     it "has a connection to scores endpoint" do
       conn = ScoreService.conn
       expect(conn).to be_a(Faraday::Connection)
     end
   end
 end
