# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.decimal :unit_price, precision: 8, scale: 2, null: false
      t.string :description, limit: 400

      t.timestamps
    end
  end
end
