module V1
  class ArcGisController < ApplicationController

    def index
      species_with_locations = Species.includes(:locations).all.map do |specie|
        {
          decimal_latitude: specie.decimal_latitude,
          decimal_longitude: specie.decimal_longitude,
          geodetic_datum: specie.geodetic_datum,
          coordinate_uncertainty_in_meters: specie.coordinate_uncertainty_in_meters,
          footprintWKT: specie.footprintWKT,
          kingdom: specie.kingdom,
          phylum: specie.phylum,
          specie_class: specie.specie_class,
          order: specie.order,
          family: specie.family,
          genus: specie.genus,
          scientific_name_authorship: specie.scientific_name_authorship,
          fid: specie.fid,
          specie_locations: specie.locations
        }
      end
      return render json: { data: species_with_locations }
    end

    def get_species
      if params['location_id']
        location = Location.find_by(id: params['location_id'])
        if location
          species = location.species
          return render json: { species: species, location: location }   
        end
      end
    end

    def get_locations
      if params['specie_id']
        specie = Species.find_by(id: params['specie_id'])
        if specie
          locations = specie.locations
          return render json: { location: locations, specie: specie }
        end
      end
    end

  end
end
