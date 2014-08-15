class AddColumnImageUrlToTableShow < ActiveRecord::Migration
  def change
		add_column :shows, :image_url, :string
  end
end
