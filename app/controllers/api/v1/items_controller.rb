# frozen_string_literal: true

class Api::V1::ItemsController < ApplicationController
  before_action :set_cart, only: [:push_to_cart]
  before_action :set_product, only: [:push_to_cart]

  def index
    @items = Item.all
    render json: { status: 200, data: @items }
  end

  def push_to_cart
    @item.add_to_cart
  end

  private

  def set_product
    @item = Item.find(params[:id])
  end
end
