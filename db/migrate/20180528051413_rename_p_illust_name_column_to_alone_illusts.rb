class RenamePIllustNameColumnToAloneIllusts < ActiveRecord::Migration[5.1]
  def change
  	rename_column :alone_illusts, :p_illust_name, :al_illust_name
  end
end
