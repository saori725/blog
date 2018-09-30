class AddUserIdToMatelpages < ActiveRecord::Migration
  def change
    add_column :matelpages, :user_id, :integer
  end
end
