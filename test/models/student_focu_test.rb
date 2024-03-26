# frozen_string_literal: true

require 'test_helper'

class StudentFocuTest < ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  test 'Create Student_focus' do

    student = build(:student)
    educator = build(:educator)
    focus = build(:focus)

    student_focus = build(:student_focu, student: student.id, educator: educator.id, focus: focus.id, active: true)
    assert student_focus.save, 'Student focus was not saved'
  end
end
