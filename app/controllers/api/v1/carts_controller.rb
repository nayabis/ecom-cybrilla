# frozen_string_literal: true

class Api::V1::CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, only: [:show]

  def show
    render json: @cart, status: :ok
  end
end
