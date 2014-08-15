class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
			t.string :rating
			t.string :name
			t.integer :number
      t.timestamps
    end
  end
end
