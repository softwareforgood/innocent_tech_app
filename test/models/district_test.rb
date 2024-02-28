# frozen_string_literal: true

require 'test_helper'

class DistrictTest < ActiveSupport::TestCase
  context 'associations' do
    should have_many(:schools).dependent(:destroy)
  end
end
