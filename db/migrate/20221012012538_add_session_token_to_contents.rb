class AddSessionTokenToContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :session_token, :string
  end
end
