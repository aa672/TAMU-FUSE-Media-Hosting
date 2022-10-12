class AddCredentialsToVideoFiles < ActiveRecord::Migration[6.1]
  def change
    add_column :video_files, :credentials, :json
  end
end
