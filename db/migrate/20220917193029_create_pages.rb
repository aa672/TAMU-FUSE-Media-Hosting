class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.integer :page_id
      t.integer :module_id
      t.integer :content_id
      t.string :page_name
      t.string :page_description

      t.timestamps
    end
  end
end
