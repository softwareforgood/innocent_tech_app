# frozen_string_literal: true

FactoryBot.define do
  factory :district do
    name { Faker::Lorem.word.titleize }
  end
end
