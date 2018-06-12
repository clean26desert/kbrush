class DropTableLaterOrders < ActiveRecord::Migration[5.1]
  def change
  	drop_table :earlier_orders
  	drop_table :passive_illusts
  	drop_table :later_orders
  end
end
