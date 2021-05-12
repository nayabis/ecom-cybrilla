# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :user
  has_many :line_items
end
