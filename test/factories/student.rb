# frozen_string_literal: true

FactoryBot.define do
  factory :student do
    last_name { Faker::Name.last_name }
    first_name { Faker::Name.first_name }
    association :school

    trait :with_educator do
      classrooms { create_list(:classroom, 1, :with_educator, school:) }
    end
  end
end
