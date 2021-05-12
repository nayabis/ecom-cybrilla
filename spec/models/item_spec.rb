# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'Validation specs' do
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_least(1).with_message(/can't be blank/) }
    it { should validate_presence_of :unit_price }
    it { should validate_numericality_of(:unit_price).is_greater_than(0) }
  end

  describe 'Association' do
    it 'has many line_items' do
      relation = described_class.reflect_on_association(:line_items)
      expect(relation.macro).to eq :has_many
    end
  end

  describe 'Add items to cart' do
    let(:item) { FactoryGirl.create(:item) }
    before do
      @cart = FactoryGirl.create(:cart)
    end

    it 'should add items to cart' do
      item.add_to_cart
      expect(@cart.line_items.find_by(item_id: item.id).present?).to be_truthy
      expect(@cart.line_items.find_by(item_id: item.id).quantity).to eq(1)
      item.add_to_cart
      expect(@cart.line_items.find_by(item_id: item.id).quantity).to eq(2)
    end
  end
end
