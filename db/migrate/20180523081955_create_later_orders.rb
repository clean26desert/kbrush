class CreateLaterOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :later_orders do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :passive_illust_id
      t.integer :active_illust_id
      t.integer :o_earlier_order_id
      t.integer :status

      t.timestamps
    end
  end
end
