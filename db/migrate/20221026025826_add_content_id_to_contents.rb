class AddContentIdToContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :contentID, :primary_key
  end
end
