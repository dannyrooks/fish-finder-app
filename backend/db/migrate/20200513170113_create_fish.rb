class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :fish_type

      t.timestamps
    end
  end
end
