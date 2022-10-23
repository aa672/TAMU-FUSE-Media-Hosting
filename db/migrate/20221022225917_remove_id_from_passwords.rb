class RemoveIdFromPasswords < ActiveRecord::Migration[6.1]
  def change
    remove_column :passwords, :password_id, :int
  end
end
