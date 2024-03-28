# frozen_string_literal: true

require 'test_helper'

class StudentKnowingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should create a valid student knowing instance' do
    student_knowing = FactoryBot.build(:student_knowing)
    assert student_knowing.valid?
  end

  test 'should belong to a student' do
    student_knowing = FactoryBot.build(:student_knowing, student: nil)
    assert_not student_knowing.valid?
  end

  test 'should belong to an educator' do
    student_knowing = FactoryBot.build(:student_knowing, educator: nil)
    assert_not student_knowing.valid?
  end

  test 'should belong to a knowing category' do
    student_knowing = FactoryBot.build(:student_knowing, knowing_category: nil)
    assert_not student_knowing.valid?
  end

  test 'description should be present' do
    student_knowing = FactoryBot.build(:student_knowing, description: nil)
    assert_not student_knowing.valid?
  end

  test "source should be either 'primary' or 'secondary'" do
    student_knowing = FactoryBot.build(:student_knowing)
    assert_includes %w[primary secondary], student_knowing.source
  end

  test 'source_description should be present' do
    student_knowing = FactoryBot.build(:student_knowing, source_description: nil)
    assert_not student_knowing.valid?
  end
end
