class AddColumnEmbedUrlToTableShow < ActiveRecord::Migration
  def change
		add_column :shows, :player_url, :string
  end
end
