# frozen_string_literal: true

FactoryBot.define do
  factory :studentfocu do
    association :focus
    association :educator
    association :student
    active { true }
  end
end