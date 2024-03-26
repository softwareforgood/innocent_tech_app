# frozen_string_literal: true

class CreateStudentFocus < ActiveRecord::Migration[7.1]
  def change
    create_table :student_focus do |t|
      t.references :focus, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.references :educator, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
