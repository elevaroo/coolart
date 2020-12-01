class AddArtistRefToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_reference :artworks, :artist, null: false, foreign_key: true
  end
end
