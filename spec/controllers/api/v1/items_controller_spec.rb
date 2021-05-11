# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should return the list of products' do
      FactoryGirl.create(:item)
      get :index, as: :json
      parsed_response = JSON.parse(response.body)['data']
      expect(parsed_response.count).to eq(1)
    end
  end
end
