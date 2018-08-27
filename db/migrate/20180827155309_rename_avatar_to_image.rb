class RenameAvatarToImage < ActiveRecord::Migration[5.1]
  def change
  	change_column :articles, :avatars, :string
  	rename_column :articles, :avatars, :image
  end
end
