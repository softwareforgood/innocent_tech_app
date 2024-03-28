# frozen_string_literal: true

class CreateStudentKnowings < ActiveRecord::Migration[7.1]
  def change
    create_table :student_knowings do |t|
      t.references :knowing_category, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.references :educator, null: false, foreign_key: true
      t.text :description
      t.string :source
      t.text :source_description

      t.timestamps
    end
  end
end
