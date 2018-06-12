class RenameLiistToIllust < ActiveRecord::Migration[5.1]
  def change
  	rename_table :active_liiusts, :active_illusts
  end
end
