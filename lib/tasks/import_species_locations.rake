namespace :import_species_locations do
  desc "add species location to database"
  task import_locations: :environment do
    csv_file = Rails.root.join("lib/data/species_locations.csv")
    CSV.read(csv_file, headers: true).each do |row|
      row = row.to_hash.symbolize_keys
      Location.find_or_create_by!(locality: row[:locality], scientific_name_id: row[:scientificNameID], scientific_name: row[:scientificName])
      puts "*************#{row[:locality]} LOCATION is INSERTED IN DATABASE*************"
    end
    puts "*************ALL THE LOCATIONS ARE INSERTED IN DATABASE*************"
  end
end
