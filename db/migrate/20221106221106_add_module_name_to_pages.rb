class AddModuleNameToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :module_name, :string
  end
end
