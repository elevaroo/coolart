class AddAccountToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :account, null: false, polymorphic: true
  end
end
