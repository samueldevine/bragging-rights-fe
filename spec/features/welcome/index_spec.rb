require 'rails_helper'

RSpec.describe 'Welcome Page' do
  it 'has a way to button in with twitter' do
    visit '/'
    click_link "/auth/twitter"
    expect(current_path).to be('https://api.twitter.com/oauth/authenticate?oauth_token=nOBzCgAAAAABXyq8AAABfjITlMY')
  end
end
