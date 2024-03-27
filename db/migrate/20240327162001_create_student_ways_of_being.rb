class CreateStudentWaysOfBeing < ActiveRecord::Migration[7.1]
  def change
    create_table :student_ways_of_being do |t|
      t.references :way_of_being, foreign_key: true
      t.references :student, foreign_key: true
      t.references :educator, foreign_key: true 

      t.timestamps
    end
  end
end