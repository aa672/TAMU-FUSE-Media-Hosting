class RemoveIdFromPages < ActiveRecord::Migration[6.1]
  def change
    remove_column :pages, :id, :integer
  end
end
