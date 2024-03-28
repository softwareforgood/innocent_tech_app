# frozen_string_literal: true

FactoryBot.define do
  factory :student_knowing do
    association :student
    association :educator
    description { Faker::Lorem.paragraph(sentence_count: 2) }
    source { %w[primary secondary].sample }
    source_description { Faker::Lorem.sentence }
    association :knowing_category
  end
end
