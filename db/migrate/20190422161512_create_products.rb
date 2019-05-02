class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name

      t.timestamps
    end

    create_table :categories do |t|
      t.string :name
      t.references :group
      
      t.timestamps
    end

    create_table :products do |t|
      t.string :name
      t.references :category
      t.references :group
      t.integer :stock
      t.float :cost

      t.timestamps
    end
  end
end
