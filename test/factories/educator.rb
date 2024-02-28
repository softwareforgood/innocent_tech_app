# frozen_string_literal: true

FactoryBot.define do
  factory :educator do
    last_name { Faker::Name.last_name }
    first_name { Faker::Name.first_name }
    association :school

    trait :with_student do
      after(:create) do |educator|
        classroom = create(:classroom, school: educator.school)
        classroom.students << create(:student, school: educator.school)
        educator.classrooms << classroom
      end
    end
  end
end
