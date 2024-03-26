# frozen_string_literal: true

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  context 'associations' do
    should belong_to(:school)
    should have_and_belong_to_many(:classrooms)
    should have_many(:educators).through(:classrooms)
  end

  test 'student factory demo' do
    puts '====Example of default student factory===='
    student1 = build(:student)
    puts "Student last name: #{student1.last_name}"
    puts "Student first name: #{student1.first_name}"
    puts "Student school name: #{student1.school.name}"
    puts "Student school's district name: #{student1.school.district.name}"
    puts "Student school's classrooms names: #{student1.school.classrooms.pluck(:name)}"
    puts "Student school's educators names: #{student1.school.educators.pluck(:first_name)}"
    
    puts ''
    puts '====Example of factory with first name overriden===='
    student2 = build(:student, first_name: 'Edith')
    puts "Student last name: #{student2.last_name}"
    puts "Student first name: #{student2.first_name}"
    puts "Student school name: #{student2.school.name}"
    puts "Student school's district name: #{student2.school.district.name}"
    puts "Student school's classrooms names: #{student2.school.classrooms.pluck(:name)}"
    puts "Student school's educators names: #{student2.school.educators.pluck(:first_name)}"
  
    puts ''
    puts '====Example of student with educator using trait===='
    student3 = create(:student, :with_educator)
    puts "Student classroom names: #{student3.classrooms.pluck(:name)}"
    puts "Student school's classrooms names: #{student3.school.classrooms.pluck(:name)}"
    puts "Student first educator classrooms names: #{student3.educators.first.classrooms.pluck(:name)}"
    puts "Student educators first names: #{student3.educators.pluck(:first_name)}"
    puts "Student school educators names: #{student3.school.educators.pluck(:first_name)}"
    puts "Student first classroom educators names: #{student3.classrooms.first.educators.pluck(:first_name)}"
  end
end
