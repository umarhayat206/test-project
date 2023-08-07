class CreateSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :species do |t|
      t.string :decimal_latitude
      t.string :decimal_longitude
      t.string :geodetic_datum
      t.string :coordinate_uncertainty_in_meters
      t.string :footprintWKT
      t.string :kingdom
      t.string :phylum
      t.string :specie_class
      t.string :order
      t.string :family
      t.string :genus
      t.string :scientific_name_authorship
      t.string :fid

      t.timestamps
    end
  end
end
