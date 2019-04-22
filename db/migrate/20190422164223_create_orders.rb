class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :cuantity
      t.float :cost
      t.boolean :payed
      t.float :expiration_date
      t.float :payment_date
      t.references :user

      t.timestamps
    end
  end
end
