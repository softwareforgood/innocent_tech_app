# frozen_string_literal: true

class CreateKnowingCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :knowing_categories do |t|
      t.string :name
      t.text :descriptions
      t.string :color
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
