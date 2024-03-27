class AddUserToEducators < ActiveRecord::Migration[7.1]
  def change
    add_reference :educators, :user, foreign_key: true, null: true
  end
end
