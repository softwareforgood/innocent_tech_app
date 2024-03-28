# frozen_string_literal: true

# Placeholder for KnowingCategory factory

FactoryBot.define do
  factory :knowing_category do
    name { Faker::Lorem.word.titleize }
    descriptions { Faker::Lorem.sentence }
    color { Faker::Color.hex_color }
    active { true }
  end
end
