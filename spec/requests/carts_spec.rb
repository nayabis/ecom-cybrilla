# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Carts', type: :request do
  before do
    @cart = FactoryGirl.create(:cart)
    sign_in(User.first)
  end

  describe 'GET #show' do
    it 'returns http success' do
      get "/api/v1/carts/#{@cart.id}", as: :json
      expect(response).to have_http_status(:success)
    end
  end
end
