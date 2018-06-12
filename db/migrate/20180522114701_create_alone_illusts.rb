class CreateAloneIllusts < ActiveRecord::Migration[5.1]
  def change
    create_table :alone_illusts do |t|
      t.integer :user_id
      t.integer :size_id
      t.string :p_illust_img_id
      t.string :p_illust_name
      t.string :p_illust_introduct
      t.string :p_illust_attention
      t.boolean :p_illust_limited_style_real
      t.boolean :p_illust_limited_style_abstract
      t.boolean :p_illust_limited_coating_line
      t.boolean :p_illust_limited_coating_cg
      t.boolean :p_illust_limited_motif_person
      t.boolean :p_illust_limited_motif_nature_outside
      t.boolean :p_illust_limited_advice_composition
      t.boolean :p_illust_limited_advice_drawing
      t.boolean :p_illust_appo_flg

      t.timestamps
    end
  end
end
