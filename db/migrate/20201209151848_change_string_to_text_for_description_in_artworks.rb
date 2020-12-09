class ChangeStringToTextForDescriptionInArtworks < ActiveRecord::Migration[6.0]
  def change
    change_column :artworks, :description, :text
    change_column :artists, :vita, :text
  end
end
