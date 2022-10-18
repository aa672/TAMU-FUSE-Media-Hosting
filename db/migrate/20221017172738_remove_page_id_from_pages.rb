class RemovePageIdFromPages < ActiveRecord::Migration[6.1]
  def change
    remove_column :pages, :page_id, :integer
  end
end
