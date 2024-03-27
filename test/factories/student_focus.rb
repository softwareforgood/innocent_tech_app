# frozen_string_literal: true

FactoryBot.define do
  factory :student_focus do
    association :focus
    association :educator
    association :student
    active { true }
  end
end
