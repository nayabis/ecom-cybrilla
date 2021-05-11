# frozen_string_literal: true

class Api::V1::ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: { status: 200, data: @items }
  end
end
