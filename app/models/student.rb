# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :school
  has_and_belongs_to_many :classrooms
  has_many :educators, through: :classrooms
  has_many :student_ways_of_being
end
