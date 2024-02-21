# frozen_string_literal: true

require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  context 'associations' do
    should belong_to(:district)
    should have_many(:educators).dependent(:destroy)
    should have_many(:students).dependent(:destroy)
    should have_many(:classrooms).dependent(:destroy)
  end
end
