class CreateVideoFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :video_files do |t|
      t.string :title
      t.string :description
      t.string :attachment

      t.timestamps
    end
  end
end
