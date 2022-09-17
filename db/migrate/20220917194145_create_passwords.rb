class CreatePasswords < ActiveRecord::Migration[6.1]
  def change
    create_table :passwords do |t|
      t.integer :password_id
      t.string :password_name
      t.string :password

      t.timestamps
    end
  end
end