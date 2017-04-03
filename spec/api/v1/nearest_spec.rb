require 'rails_helper'

describe "Nearest API" do
  describe 'check endpoints /nearest' do
    it 'Do not return 200 status if GET /' do
      get '/api/nearest'
      # test for the 200 status-code
      expect(response).not_to eq 200
    end
    it 'return 200 status if GET' do
      FactoryGirl.create(:position)
      get '/api/nearest/position/#{position.id}'
      # test for the 200 status-code
      expect(response.status).to be_success
    end

  end
end