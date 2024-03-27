# frozen_string_literal: true

require 'test_helper'

class FocusTest < ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  test 'should save new focus' do
    new_focus = create(:focus)

    assert new_focus.save, 'new focus has not saved'
    assert_not_nil new_focus.id, 'new focus has been saved succesfully'
  end
end
