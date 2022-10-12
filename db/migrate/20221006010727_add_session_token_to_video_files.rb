class AddSessionTokenToVideoFiles < ActiveRecord::Migration[6.1]
  def change
    add_column :video_files, :session_token, :string, null: false
  end
end
