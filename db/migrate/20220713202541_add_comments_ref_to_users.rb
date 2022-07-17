class AddCommentsRefToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :comments, null: false, foreign_key: true
  end
end
