class CreateSpecieLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :specie_locations do |t|

      t.timestamps
      t.references :specie
      t.references :location
    end
  end
end
