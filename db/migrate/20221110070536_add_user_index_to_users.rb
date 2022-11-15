class AddUserIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string, null: false, default: ""
    add_index :users, :username, unique: true
  end
end
