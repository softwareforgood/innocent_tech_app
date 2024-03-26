# frozen_string_literal: true

FactoryBot.define do
  factory :classroom do
    name { Faker::Lorem.word.titleize }
    association :school

    trait :with_educator do
      educators { create_list(:educator, 1, school:) }
    end
  end
end
