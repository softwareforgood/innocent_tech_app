# frozen_string_literal: true

puts 'seeding data for classroom setup'

district = District.find_or_create_by(name: 'Demo District')
school = district.schools.find_or_create_by(name: 'Demo School')
user = User.find_or_create_by(email: 'user@example.com') do |u|
  u.password = 'password'
end

educator = school.educators.find_or_create_by(first_name: 'Emily', last_name: 'Educator') do |e|
  e.user = user
end

classroom = school.classrooms.find_or_create_by(name: 'Demo Classroom')

classroom.educators << educator

STUDENTS = [
  { first_name: 'Emmett', last_name: 'Martin' },
  { first_name: 'Keia', last_name: 'Garcia' },
  { first_name: 'Saddiq', last_name: 'Frost' },
  { first_name: 'Marge', last_name: 'Hendricks' }
].freeze

STUDENTS.each do |name|
  student = school.students.find_or_create_by(name)
  classroom.students << student unless classroom.students.include? student
end
