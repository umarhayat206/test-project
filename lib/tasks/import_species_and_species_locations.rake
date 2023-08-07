namespace :import_species_and_species_locations do
  desc "add species location to database"
  task import_records: :environment do
    require 'csv'
    
    csv_file = Rails.root.join("lib/data/Species.csv")
    CSV.foreach(csv_file, headers: true) do |row|
      row = row.to_hash.symbolize_keys
      location = Location.find_by(locality: row[:locality], scientific_name_id: row[:scientificNameID], scientific_name: row[:scientificName])
      if location
        specie = Species.find_or_create_by(decimal_latitude: row[:decimalLatitude], decimal_longitude: row[:decimalLongitude], geodetic_datum: row[:geodeticDatum], coordinate_uncertainty_in_meters: row[:coordinateUncertaintyInMeters], footprintWKT: row[:footprintWKT], kingdom: row[:kingdom], phylum: row[:phylum], specie_class: row[:class], order: row[:order_], family: row[:family], genus: row[:genus], scientific_name_authorship: row[:scientificNameAuthorship], fid: row[:FID])
        SpeciesLocation.find_or_create_by(location: location, species: specie)
      end
    end
  end
end