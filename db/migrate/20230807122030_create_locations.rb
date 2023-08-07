class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :locality
      t.string :decimal_latitude
      t.string :decimal_longitude
      t.string :geodetic_datum
      t.string :coordinate_uncertainty_in_meters
      t.string :footprintWKT

      t.timestamps
    end
  end
end