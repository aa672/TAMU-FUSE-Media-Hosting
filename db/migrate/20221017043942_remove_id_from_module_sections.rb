class RemoveIdFromModuleSections < ActiveRecord::Migration[6.1]
  def change
    remove_column :module_sections, :id, :integer
  end
end
