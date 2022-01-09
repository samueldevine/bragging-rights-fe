require 'rails_helper'

RSpec.describe 'User Dashboard' do
  before :each do
    @user = User.create!(uid: 123456, nickname: 'chazsimons', access_token: '123')
    visit '/dashboard'
  end
  it 'displays the users twitter name' do
    
    expect(page).to have_content(@user.nickname)
    expect(page).to have_content('Your High Scores')
  end
  
  it 'has a link to twitter' do
    
    expect(page).to have_link(class: 'twitter-share-button')
  end
end
