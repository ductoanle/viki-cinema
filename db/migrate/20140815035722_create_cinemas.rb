class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
			t.string :name
			t.datetime :show_time
      t.timestamps
    end
  end
end
