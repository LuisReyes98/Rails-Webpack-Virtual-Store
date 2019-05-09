class CreateUsersCartsConectors < ActiveRecord::Migration[5.2]
  def change
    create_table :users_carts_conectors do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end