# frozen_string_literal: true

class District < ApplicationRecord
  has_many :schools, dependent: :destroy
end
