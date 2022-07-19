class AddUsersRefToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :authors, null: false, foreign_key: true
  end
end
