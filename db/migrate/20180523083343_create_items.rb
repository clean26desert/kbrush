class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :item_img_id
      t.string :item_name
      t.string :item_introduct
      t.string :item_attention
      t.boolean :item_limited_size_b4
      t.boolean :item_limited_size_a4
      t.boolean :item_limited_style_real
      t.boolean :item_limited_style_abstract
      t.boolean :item_limited_coating_line
      t.boolean :item_limited_coating_cg
      t.boolean :item_limited_motif_person
      t.boolean :item_limited_motif_nature_outside
      t.boolean :item_limited_advice_composition
      t.boolean :item_limited_advice_drawing
      t.boolean :item_appo_flg

      t.timestamps
    end
  end
end
