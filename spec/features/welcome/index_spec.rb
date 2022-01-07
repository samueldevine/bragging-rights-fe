require 'rails_helper'

RSpec.describe 'Welcome Page' do
  it 'has an option to sign in' do
    visit '/'
    within("center#welcome") do
      expect(page).to have_content("Bragging Rights")
      expect(page).to have_content("Sign in to get your brag on:")
    end
  end
end
