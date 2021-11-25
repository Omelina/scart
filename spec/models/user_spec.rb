require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'GET /status' do
    it 'returns a list of users' do
      get('/users')
      json = JSON.parse(response.body)
      expect(json['users']).to be_valid
    end
  end
end
