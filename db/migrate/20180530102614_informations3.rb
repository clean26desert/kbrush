class Informations3 < ActiveRecord::Migration[5.1]
  def change
  	# デフォルト値を追加
	change_column_default :informations, :checked_flg, 0

  	# NULL制約を追加
  	change_column_null :informations, :checked_flg, false
  end
end
