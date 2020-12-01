class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :collector, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
