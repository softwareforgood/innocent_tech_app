# frozen_string_literal: true

class StudentKnowing < ApplicationRecord
  belongs_to :knowing_category
  belongs_to :student
  belongs_to :educator
end
