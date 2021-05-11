# frozen_string_literal: true

class Item < ApplicationRecord
  validates :name, presence: true

  validates :unit_price, presence: true

  validates :name, length: { minimum: 1, maximum: 200 }

  validates :unit_price, numericality: { greater_than: 0 }
end
