# frozen_string_literal: true

require 'test_helper'

class StudentFocusTest < ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  test 'Create Studentfocus' do
    studentfocus = build(:student_focus, active: true)
    assert studentfocus.save!, 'Student focus was not saved'
    assert_not_nil studentfocus.id, 'Student focus was saved successfully'
  end
end
