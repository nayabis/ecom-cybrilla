# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe 'Association' do
    it 'has many line_items' do
      relation = described_class.reflect_on_association(:line_items)
      expect(relation.macro).to eq :has_many
    end

    it 'belongs_to user' do
      relation = described_class.reflect_on_association(:user)
      expect(relation.macro).to eq :belongs_to
    end
  end
end
