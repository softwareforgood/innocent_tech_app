# frozen_string_literal: true

FactoryBot.define do
  factory :school do
    name { Faker::Lorem.word.titleize }
    association :district
  end
end
