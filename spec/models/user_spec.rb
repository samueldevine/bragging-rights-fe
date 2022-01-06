require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :uid }
    it { should validate_presence_of :nickname }
    it { should validate_presence_of :access_token }
  end
end