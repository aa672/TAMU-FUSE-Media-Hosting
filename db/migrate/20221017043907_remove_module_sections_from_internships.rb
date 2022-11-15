class RemoveModuleSectionsFromInternships < ActiveRecord::Migration[6.1]
  def change
    remove_reference :internships, :module_sections, null: false, foreign_key: true
  end
end
