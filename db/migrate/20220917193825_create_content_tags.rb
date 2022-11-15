class CreateContentTags < ActiveRecord::Migration[6.1]
  def change
    create_table :content_tags do |t|
      t.integer :contentTag_id
      t.integer :tag_id
      t.integer :page_id

      t.timestamps
    end
  end
end
