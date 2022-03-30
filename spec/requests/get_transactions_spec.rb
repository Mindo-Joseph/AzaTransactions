require 'rails_helper'

RSpec.describe 'Transactions', type: :request do
  describe 'GET /transactions' do
    before do
      FactoryBot.create_list(:transaction, 10)
      get '/api/transactions'

    end
    it 'returns all transactions' do
      expect(json.size).to eq(10)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end

end