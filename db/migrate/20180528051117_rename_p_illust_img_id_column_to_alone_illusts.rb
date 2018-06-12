class RenamePIllustImgIdColumnToAloneIllusts < ActiveRecord::Migration[5.1]
  def change
  	rename_column :alone_illusts, :p_illust_img_id, :al_illust_img_id
  end
end
