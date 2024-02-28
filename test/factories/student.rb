# frozen_string_literal: true

FactoryBot.define do
  factory :student do
    last_name { Faker::Name.last_name }
    first_name { Faker::Name.first_name }
    association :school
  end
end
