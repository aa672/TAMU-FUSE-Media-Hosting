class AddInternshipIdToInternshipOps < ActiveRecord::Migration[6.1]
  def change
    add_column :internship_ops, :internshipID, :primary_key
  end
end
