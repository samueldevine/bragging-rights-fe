require 'rails_helper'

RSpec.describe 'User Dashboard' do
  before :each do
    @user = User.create!(uid: 123456, nickname: 'chazsimons', access_token: '123')
  end
  it 'displays the users twitter name' do
    visit '/dashboard'

    expect(page).to have_content(@user.nickname)
  end
end
