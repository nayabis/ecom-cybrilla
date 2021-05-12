# frozen_string_literal: true

class Item < ApplicationRecord
  validates :name, presence: true

  validates :unit_price, presence: true

  validates :name, length: { minimum: 1, maximum: 200 }

  validates :unit_price, numericality: { greater_than: 0 }

  has_many :line_items

  def add_to_cart
    current_item = @cart.line_items.find_by(item_id: id)
    if current_item
      current_item.increment(:quantity)
    else
      current_item = @cart.line_items.build(item_id: id)
    end
    current_item
  end
end
