class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|

      t.timestamps
      t.string :locality
      t.string :scientific_name_id
      t.string :scientific_name
    end
  end
end
