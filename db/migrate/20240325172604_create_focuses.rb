# frozen_string_literal: true

class CreateFocuses < ActiveRecord::Migration[7.1]
  def change
    create_table :focuses do |t|
      t.string :name
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
