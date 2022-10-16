class CreateInternshipOps < ActiveRecord::Migration[6.1]
  def change
    create_table :internship_ops do |t|
      t.integer :internship_id
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
