class CreateModuleSections < ActiveRecord::Migration[6.1]
  def change
    create_table :module_sections do |t|
      t.integer :module_id
      t.string :module_name

      t.timestamps
    end
  end
end
