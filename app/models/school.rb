# frozen_string_literal: true

class School < ApplicationRecord
  belongs_to :district
  has_many :educators, dependent: :destroy
  has_many :students, dependent: :destroy
  has_many :classrooms, dependent: :destroy
end
