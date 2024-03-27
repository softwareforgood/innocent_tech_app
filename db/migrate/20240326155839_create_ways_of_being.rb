class CreateWaysOfBeing < ActiveRecord::Migration[7.1]
  def change
    create_table :ways_of_being do |t|
      t.string :name
      t.string :description
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
