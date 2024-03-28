# frozen_string_literal: true

require 'test_helper'

class KnowingCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'knowing category should be valid' do
    knowing_category = FactoryBot.build(:knowing_category)
    assert knowing_category.valid?
  end

  test 'knowing category should have a name' do
    knowing_category = FactoryBot.build(:knowing_category, name: nil)
    assert_not knowing_category.valid?
  end

  test 'knowing category should have a description' do
    knowing_category = FactoryBot.build(:knowing_category, descriptions: nil)
    assert_not knowing_category.valid?
  end

  test 'knowing category should have a color' do
    knowing_category = FactoryBot.build(:knowing_category, color: nil)
    assert_not knowing_category.valid?
  end

  test 'knowing category should be active' do
    knowing_category = FactoryBot.build(:knowing_category)
    assert knowing_category.active?
  end
end
