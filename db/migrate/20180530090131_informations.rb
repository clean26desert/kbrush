class Informations < ActiveRecord::Migration[5.1]
  def change
  	# デフォルト値を追加
  	change_column_default :users, :f_business_flg, 1
  	change_column_default :users, :user_appo_flg, 1

  	change_column_default :items, :item_limited_size_b4, 0
  	change_column_default :items, :item_limited_size_a4, 0
  	change_column_default :items, :item_limited_style_real, 0
  	change_column_default :items, :item_limited_style_abstract, 0
  	change_column_default :items, :item_limited_coating_line, 0
  	change_column_default :items, :item_limited_coating_cg, 0
  	change_column_default :items, :item_limited_motif_person, 0
  	change_column_default :items, :item_limited_motif_nature_outside, 0
  	change_column_default :items, :item_limited_advice_composition, 0
  	change_column_default :items, :item_limited_advice_drawing, 0
  	change_column_default :items, :item_appo_flg, 1

  	change_column_default :orders, :status, 0

  	# NULL制約を追加
  	change_column_null :users, :f_business_flg, false
  	change_column_null :users, :user_appo_flg, false

  	change_column_null :items, :item_limited_size_b4, false
  	change_column_null :items, :item_limited_size_a4, false
  	change_column_null :items, :item_limited_style_real, false
  	change_column_null :items, :item_limited_style_abstract, false
  	change_column_null :items, :item_limited_coating_line, false
  	change_column_null :items, :item_limited_coating_cg, false
  	change_column_null :items, :item_limited_motif_person, false
  	change_column_null :items, :item_limited_motif_nature_outside, false
  	change_column_null :items, :item_limited_advice_composition, false
  	change_column_null :items, :item_limited_advice_drawing, false
  	change_column_null :items, :item_appo_flg, false

  	change_column_null :orders, :status, false
  end
end
