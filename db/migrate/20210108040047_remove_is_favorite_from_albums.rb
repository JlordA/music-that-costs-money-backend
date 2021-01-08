class RemoveIsFavoriteFromAlbums < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :is_favorite, :boolean
  end
end
