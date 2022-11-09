class AddModIdToModuleSections < ActiveRecord::Migration[6.1]
  def change
    add_column :module_sections, :modID, :primary_key
  end
end
