class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :location
      t.string :nationality
      t.date :date_of_birth
      t.string :vita
      t.string :artschool
      t.timestamps
    end
  end
end
