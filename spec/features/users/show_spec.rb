require 'rails_helper'

RSpec.describe 'User Dashboard' do
  before :each do
    @user = User.create!(uid: "119651388", nickname: 'chazsimons', access_token: '119651388-u4vxcNWjAUXyzUcapo1SfIqExeFDCKEf6zG8PWTB')
  end

  it 'displays the users twitter name' do
    visit '/dashboard'

    expect(page).to have_content(@user.nickname)
  end
end
