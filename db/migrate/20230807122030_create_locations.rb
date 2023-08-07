class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :locality
      t.string :scientific_name_id
      t.string :scientific_name
      t.timestamps
    end
  end
end
