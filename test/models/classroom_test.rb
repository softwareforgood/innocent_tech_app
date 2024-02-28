# frozen_string_literal: true

require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  context 'associations' do
    should belong_to(:school)
    should have_and_belong_to_many(:students)
    should have_and_belong_to_many(:educators)
  end
end
