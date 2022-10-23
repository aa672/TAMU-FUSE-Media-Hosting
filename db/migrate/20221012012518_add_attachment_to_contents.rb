class AddAttachmentToContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :attachment, :string
  end
end
