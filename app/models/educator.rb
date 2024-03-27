# frozen_string_literal: true

class Educator < ApplicationRecord
  belongs_to :school
  has_and_belongs_to_many :classrooms
  has_many :students, through: :classrooms
  has_many :student_ways_of_being
end
