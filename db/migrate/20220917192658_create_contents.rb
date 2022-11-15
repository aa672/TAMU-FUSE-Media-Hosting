class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.integer :content_id
      t.string :content_type
      t.string :content_storage_link

      t.timestamps
    end
  end
end
