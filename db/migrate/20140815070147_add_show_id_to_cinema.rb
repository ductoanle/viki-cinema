class AddShowIdToCinema < ActiveRecord::Migration
  def change
		add_column :cinemas, :show_id, :integer
  end
end
