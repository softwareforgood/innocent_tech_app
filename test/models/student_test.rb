# frozen_string_literal: true

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  context 'associations' do
    should belong_to(:school)
    should have_and_belong_to_many(:classrooms)
    should have_many(:educators).through(:classrooms)
  end
end
