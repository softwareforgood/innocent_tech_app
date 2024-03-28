# frozen_string_literal: true

class KnowingCategory < ApplicationRecord
  validates :name, presence: true
  validates :descriptions, presence: true
  validates :color, presence: true
end
