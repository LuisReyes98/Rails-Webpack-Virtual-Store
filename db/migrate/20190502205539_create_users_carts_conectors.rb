class CreateUsersCartsConectors < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.float :cost
      t.integer :items_number
      t.references :user, foreign_key: true
      t.datetime :due_date


      t.timestamps
    end

    create_table :users_carts_conectors do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true    
      t.integer :amount

      t.references :order, foreign_key: true
      t.boolean :in_order, default: false        
      t.timestamps
    end
  end
end
