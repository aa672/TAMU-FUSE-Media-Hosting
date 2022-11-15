class AddPageIdToContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :page_id, :integer
  end
end
