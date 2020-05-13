class CreateFishLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :fish_locations do |t|
      t.belongs_to :fish, null: false, foreign_key: true
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
