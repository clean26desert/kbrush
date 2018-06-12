class CreateEarlierOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :earlier_orders do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :passive_illust_id
      t.integer :status

      t.timestamps
    end
  end
end
