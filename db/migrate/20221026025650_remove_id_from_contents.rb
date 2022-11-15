class RemoveIdFromContents < ActiveRecord::Migration[6.1]
  def change
    remove_column :contents, :id, :integer
  end
end
