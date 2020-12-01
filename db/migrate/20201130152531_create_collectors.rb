class CreateCollectors < ActiveRecord::Migration[6.0]
  def change
    create_table :collectors do |t|

      t.timestamps
    end
  end
end
