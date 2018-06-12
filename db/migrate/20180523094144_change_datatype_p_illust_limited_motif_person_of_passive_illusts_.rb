class ChangeDatatypePIllustLimitedMotifPersonOfPassiveIllusts < ActiveRecord::Migration[5.1]
  def change
  	change_column :passive_illusts, :p_illust_limited_motif_person, :boolean
  end
end
