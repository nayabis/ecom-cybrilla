# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Items', type: :request do
  describe 'GET #index' do
    it 'returns http success' do
      get '/api/v1/items', as: :json
      expect(response).to have_http_status(:success)
    end

    it 'should return the list of products' do
      FactoryGirl.create(:item)
      get '/api/v1/items', as: :json
      parsed_response = JSON.parse(response.body)['data']
      expect(parsed_response.count).to eq(1)
    end
  end
end
