class ChangePriceToMonetizeInArtworks < ActiveRecord::Migration[6.0]
  def change
    remove_column :artworks, :price
    add_monetize :artworks, :price, currency: { present: false }
  end
end
