class AddPageIdToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :pageID, :primary_key
  end
end
