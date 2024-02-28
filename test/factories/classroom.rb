# frozen_string_literal: true

FactoryBot.define do
  factory :classroom do
    name { Faker::Lorem.word.titleize }
    association :school
  end
end
