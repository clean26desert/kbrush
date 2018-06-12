class RemoveUserIdFromActiveIllust < ActiveRecord::Migration[5.1]
  def change
    remove_column :active_illusts, :user_id, :integer
    remove_column :active_illusts, :passive_illust_id, :integer

    add_column :active_illusts, :order_id, :integer
  end
end
