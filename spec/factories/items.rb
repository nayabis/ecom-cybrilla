# frozen_string_literal: true

FactoryGirl.define do
  factory :item do
    name { Faker::Name.unique.name }
    unit_price { Faker::Number.decimal }
    description { Faker::String.random }
  end
end
