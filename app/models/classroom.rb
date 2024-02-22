# frozen_string_literal: true

class Classroom < ApplicationRecord
  belongs_to :school
  has_and_belongs_to_many :students, dependent: :nullify
  has_and_belongs_to_many :educators, dependent: :nullify
end
