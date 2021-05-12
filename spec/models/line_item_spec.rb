# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LineItem, type: :model do
  describe 'Association' do
    it 'belongs_to cart' do
      relation = described_class.reflect_on_association(:cart)
      expect(relation.macro).to eq :belongs_to
    end

    it 'belongs_to item' do
      relation = described_class.reflect_on_association(:item)
      expect(relation.macro).to eq :belongs_to
    end
  end
end
