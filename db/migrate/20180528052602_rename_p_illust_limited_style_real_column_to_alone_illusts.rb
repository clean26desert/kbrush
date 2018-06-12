class RenamePIllustLimitedStyleRealColumnToAloneIllusts < ActiveRecord::Migration[5.1]
  def change
  	rename_column :alone_illusts, :p_illust_limited_style_real, :al_illust_limited_style_real
  	rename_column :alone_illusts, :p_illust_limited_style_abstract, :al_illust_limited_style_abstract
  	rename_column :alone_illusts, :p_illust_limited_coating_line, :al_illust_limited_coating_line
  	rename_column :alone_illusts, :p_illust_limited_coating_cg, :al_illust_limited_coating_cg
  	rename_column :alone_illusts, :p_illust_limited_motif_person, :al_illust_limited_motif_person
  	rename_column :alone_illusts, :p_illust_limited_motif_nature_outside, :al_illust_limited_motif_nature_outside
  	rename_column :alone_illusts, :p_illust_limited_advice_composition, :al_illust_limited_advice_composition
  	rename_column :alone_illusts, :p_illust_limited_advice_drawing, :al_illust_limited_advice_drawing
  	rename_column :alone_illusts, :p_illust_appo_flg, :al_illust_appo_flg
  end
end
