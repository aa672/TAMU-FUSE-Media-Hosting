class RemoveIdFromInternshipOps < ActiveRecord::Migration[6.1]
  def change
    remove_column :internship_ops, :id, :integer
  end
end
