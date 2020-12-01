class CreateFavoriteArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_artworks do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :collector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
