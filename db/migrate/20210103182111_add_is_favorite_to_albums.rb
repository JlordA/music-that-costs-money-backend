class AddIsFavoriteToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :is_favorite, :boolean
  end
end
