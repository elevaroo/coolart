class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :description
      t.date :year
      t.integer :price
      t.integer :height
      t.integer :width
      t.integer :depth
      t.references :medium, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
