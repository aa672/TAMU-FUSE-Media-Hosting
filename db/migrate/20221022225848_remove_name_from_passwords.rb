class RemoveNameFromPasswords < ActiveRecord::Migration[6.1]
  def change
    remove_column :passwords, :password_name, :string
  end
end
