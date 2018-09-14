class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :micropost_id, null: false
      t.integer :likes_count, null: false

      t.timestamps
    end
  end
end