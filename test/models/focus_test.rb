# frozen_string_literal: true

require 'test_helper'

class FocusTest < ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  test 'should save new focus' do
    new_focus = create(:focus)

    assert new_focus.save, 'New focus has not saved'
  end
end
