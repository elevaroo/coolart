class ChangeIdsForFavArtworks < ActiveRecord::Migration[6.0]
  def change
    change_column :favorite_artworks, :collector_id, :integer
    change_column :favorite_artworks, :artwork_id, :integer
  end
end
