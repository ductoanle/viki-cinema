class AddColumnDurationToShow < ActiveRecord::Migration
  def change
		add_column :shows, :duration, :integer
  end
end
