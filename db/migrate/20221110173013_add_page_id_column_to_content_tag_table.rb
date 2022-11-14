class AddPageIdColumnToContentTagTable < ActiveRecord::Migration[6.1]
  def change
    add_column :content_tags, :page_id, :string
  end
end
