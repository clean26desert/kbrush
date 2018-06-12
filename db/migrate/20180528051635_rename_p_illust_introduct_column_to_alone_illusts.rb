class RenamePIllustIntroductColumnToAloneIllusts < ActiveRecord::Migration[5.1]
  def change
  	rename_column :alone_illusts, :p_illust_introduct, :al_illust_introduct
  	rename_column :alone_illusts, :p_illust_attention, :al_illust_attention
  end
end
