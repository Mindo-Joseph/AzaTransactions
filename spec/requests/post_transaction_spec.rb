require 'rails_helper'

RSpec.describe 'Transactions', type: :request do
  describe 'POST /create' do
    context 'with valid parameters' do
      let!(:transaction) {FactoryBot.create(:transaction)}
      before do
        post '/api/transactions', params: {transaction: {
          customerID: transaction.customerID,
          inputAmount:transaction.inputAmount,
          inputCurrency: transaction.inputCurrency,
          outputAmount: transaction.outputAmount,
          outputCurrency: transaction.outputCurrency,
          date: transaction.date,
        }
        }

      end
      it 'returns the cutomer ID' do
        expect(json['customerID']).to eq(transaction.customerID)
      end
      it 'returns the input amount' do
        expect(json['inputAmount']).to eq(transaction.inputAmount)
      end
      it 'returns the input currency' do
        expect(json['inputCurrency']).to eq(transaction.inputCurrency)
      end
      it 'returns the output amount' do
        expect(json['outputAmount']).to eq(transaction.outputAmount)
      end
      it 'returns the output currency' do
        expect(json['outputCurrency']).to eq(transaction.outputCurrency)
      end
      it 'returns the date' do
        expect(json['date']).instance_of?(DateTime)
      end
      it 'returns a created status' do
        expect(response).to have_http_status(:created)
      end
    end
    context 'with invalid parameters' do
      before do
        post '/api/transactions', params:
          { transaction: {
            customerID: '',
            inputAmount: '',
            inputCurrency: '',
            outputAmount: '',
            outputCurrency: '',
            date: ''
          } }
      end
      it 'returns a unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end