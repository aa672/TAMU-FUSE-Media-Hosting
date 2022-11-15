class RemoveContentIdFromContents < ActiveRecord::Migration[6.1]
  def change
    remove_column :contents, :content_id, :integer
  end
end
