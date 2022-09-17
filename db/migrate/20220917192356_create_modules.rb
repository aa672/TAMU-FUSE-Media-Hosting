class CreateModules < ActiveRecord::Migration[6.1]
  def change
    create_table :modules do |t|
      t.integer :module_id
      t.string :module_name

      t.timestamps
    end
  end
end
