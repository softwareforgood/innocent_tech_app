# frozen_string_literal: true

class CreateFocus < ActiveRecord::Migration[7.1]
  def change
    create_table :focus do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
