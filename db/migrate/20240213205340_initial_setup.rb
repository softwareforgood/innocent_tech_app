# frozen_string_literal: true

class InitialSetup < ActiveRecord::Migration[7.1]
  def up
    create_table :districts do |t|
      t.string :name
      t.timestamps
    end

    create_table :schools do |t|
      t.string :name
      t.references :district, foreign_key: true
      t.timestamps
    end

    create_table :classrooms do |t|
      t.string :name
      t.references :school, foreign_key: true
      t.timestamps
    end

    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.references :school, foreign_key: true
      t.timestamps
    end

    create_table :educators do |t|
      t.string :first_name
      t.string :last_name
      t.references :school, foreign_key: true
      t.timestamps
    end
    create_join_table :classrooms, :students
    create_join_table :classrooms, :educators
  end

  def down
    drop_table :classrooms_educators
    drop_table :classrooms_students
    drop_table :educators
    drop_table :students
    drop_table :classrooms
    drop_table :schools
    drop_table :districts
  end
end
