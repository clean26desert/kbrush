class AloneIllusts < ActiveRecord::Migration[5.1]
  def change
  	# デフォルト値を追加
	change_column_default :alone_illusts, :al_illust_limited_style_real, 0
  	change_column_default :alone_illusts, :al_illust_limited_style_abstract, 0
  	change_column_default :alone_illusts, :al_illust_limited_coating_line, 0
  	change_column_default :alone_illusts, :al_illust_limited_coating_cg, 0
  	change_column_default :alone_illusts, :al_illust_limited_motif_person, 0
  	change_column_default :alone_illusts, :al_illust_limited_motif_nature_outside, 0
  	change_column_default :alone_illusts, :al_illust_limited_advice_composition, 0
  	change_column_default :alone_illusts, :al_illust_limited_advice_drawing, 0
  	change_column_default :alone_illusts, :al_illust_appo_flg, 1

  	# NULL制約を追加
  	change_column_null :alone_illusts, :al_illust_limited_style_real, false
  	change_column_null :alone_illusts, :al_illust_limited_style_abstract, false
  	change_column_null :alone_illusts, :al_illust_limited_coating_line, false
  	change_column_null :alone_illusts, :al_illust_limited_coating_cg, false
  	change_column_null :alone_illusts, :al_illust_limited_motif_person, false
  	change_column_null :alone_illusts, :al_illust_limited_motif_nature_outside, false
  	change_column_null :alone_illusts, :al_illust_limited_advice_composition, false
  	change_column_null :alone_illusts, :al_illust_limited_advice_drawing, false
	change_column_null :alone_illusts, :al_illust_appo_flg, false
  end
end
