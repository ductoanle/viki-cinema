class AddEndTimeToCinema < ActiveRecord::Migration
  def change
		add_column :cinemas, :end_time, :datetime
  end
end
