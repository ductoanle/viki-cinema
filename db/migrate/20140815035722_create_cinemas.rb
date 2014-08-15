class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|

      t.timestamps
    end
  end
end
