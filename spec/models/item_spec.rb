# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'Validation specs' do
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_least(1).with_message(/can't be blank/) }
    it { should validate_presence_of :unit_price }
    it { should validate_numericality_of(:unit_price).is_greater_than(0) }
  end
end
