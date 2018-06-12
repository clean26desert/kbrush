class CreateActiveLiiusts < ActiveRecord::Migration[5.1]
  def change
    create_table :active_liiusts do |t|
      t.integer :user_id
      t.integer :passive_illust_id
      t.integer :a_illust_img_id
      t.string :a_illust_name
      t.string :advice
      t.integer :a_value_clear
      t.integer :a_value_match
      t.integer :a_value_again
      t.string :a_value_comment
      t.integer :p_value_clear
      t.integer :p_value_match
      t.integer :p_value_again
      t.string :p_value_comment

      t.timestamps
    end
  end
end
