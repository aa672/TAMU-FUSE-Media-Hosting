class RemoveModuleIdFromModuleSections < ActiveRecord::Migration[6.1]
  def change
    remove_column :module_sections, :module_id, :integer
  end
end
