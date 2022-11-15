class DeleteContentIdColumnFromContentTagTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :content_tags, :content_id
  end
end
