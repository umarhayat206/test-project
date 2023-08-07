namespace :import_species_and_species_locations do
  
  desc "add species and locations to database"
  task import_records: :environment do
    require 'csv'
    
    csv_file = Rails.root.join("lib/data/Species.csv")
    CSV.foreach(csv_file, headers: true) do |row|
      row = row.to_hash.symbolize_keys
      location = Location.find_or_create_by(locality: row[:locality], decimal_latitude: row[:decimalLatitude], decimal_longitude: row[:decimalLongitude], geodetic_datum: row[:geodeticDatum], coordinate_uncertainty_in_meters: row[:coordinateUncertaintyInMeters], footprintWKT: row[:footprintWKT] )
      puts "******#{location.locality} is created*********"
      if location
        specie = location.species.find_or_create_by(scientific_name: row[:scientificName], scientific_name_authorship: row[:scientificNameAuthorship], genus: row[:genes], family: row[:family], fid: row[:FID], order: row[:order_], specie_class: row[:class], phylum: row[:phylum], kingdom: row[:kingdom], scientific_name: row[:scientificName], scientific_name_id: row[:scientificNameID])
        puts "*************#{specie.scientific_name_authorship}ALL THE LOCATIONS ARE INSERTED IN DATABASE*************"
      end
    end
  end

end