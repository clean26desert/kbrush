class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :item_id
      t.integer :alone_illust_id
      t.integer :status, :null => false, :default => 0

      t.timestamps
    end
  end
end
