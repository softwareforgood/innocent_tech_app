# frozen_string_literal: true

class StudentFocus < ApplicationRecord
  belongs_to :focus
  belongs_to :student
  belongs_to :educator
end
