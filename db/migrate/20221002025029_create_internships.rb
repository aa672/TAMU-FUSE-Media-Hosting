class CreateInternships < ActiveRecord::Migration[6.1]
  def change
    create_table :internships do |t|
      t.integer :internship_id
      t.references :module_sections, null: false, foreign_key: true
      t.string :internship_name
      t.string :company_name
      t.string :contact_name
      t.string :contact_email
      t.string :company_link
      t.text :description

      t.timestamps
    end
  end
end
