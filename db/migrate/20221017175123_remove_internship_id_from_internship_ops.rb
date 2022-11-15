class RemoveInternshipIdFromInternshipOps < ActiveRecord::Migration[6.1]
  def change
    remove_column :internship_ops, :internship_id, :integer
  end
end
