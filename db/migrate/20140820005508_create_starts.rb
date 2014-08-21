class CreateStarts < ActiveRecord::Migration
  def change
    create_table :starts do |t|
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
