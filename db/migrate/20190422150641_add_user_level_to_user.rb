class AddUserLevelToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, unique: true, null: false, default: ""
    add_column :users, :access_level, :integer, null: false, default: 1

  end
end
