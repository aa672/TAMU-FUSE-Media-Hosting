class AddContentIdsToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :content_ids, :integer, array: true, default: []
  end
end
