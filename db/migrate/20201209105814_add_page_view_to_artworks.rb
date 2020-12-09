class AddPageViewToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :view_counter, :integer, default: 0
  end
end
