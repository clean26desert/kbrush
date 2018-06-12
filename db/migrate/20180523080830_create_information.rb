class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.integer :user_id
      t.string :information
      t.boolean :checked_flg

      t.timestamps
    end
  end
end
