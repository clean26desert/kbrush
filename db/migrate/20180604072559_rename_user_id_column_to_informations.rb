class RenameUserIdColumnToInformations < ActiveRecord::Migration[5.1]
  def change
  	rename_column :informations, :user_id, :order_id
  end
end
