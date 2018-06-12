class Users < ActiveRecord::Migration[5.1]
  def change
  	# デフォルト値を追加
  	change_column_default :users, :f_appo_flg, 1

  	# NULL制約を追加
  	change_column_null :users, :f_appo_flg, false
  end
end
