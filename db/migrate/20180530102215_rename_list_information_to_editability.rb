class RenameListInformationToEditability < ActiveRecord::Migration[5.1]
  def change
  	rename_table :information, :informations
  end
end
