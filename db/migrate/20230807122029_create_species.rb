class CreateSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :species do |t|
      t.string :scientific_name_authorship
      t.string :genus
      t.string :family
      t.string :fid
      t.string :order
      t.string :specie_class
      t.string :phylum
      t.string :kingdom
      t.string :scientific_name
      t.string :scientific_name_id

      t.timestamps
    end
  end
end