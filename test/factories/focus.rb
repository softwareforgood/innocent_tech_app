# frozen_string_literal: true

FactoryBot.define do
  
  factory :focus do
    name { Faker::Lorem.word.titleize }
    active { true }
  end
end