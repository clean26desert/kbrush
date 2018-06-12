class ChangeDatatypeAIllustImgOfActiveIllusts < ActiveRecord::Migration[5.1]
  def change
  	change_column :active_illusts, :a_illust_img_id, :string
  end
end
