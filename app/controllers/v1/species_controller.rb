module V1
  class SpeciesController < ApplicationController

    def index
      species_with_locations = Species.includes(:locations).map do |specie|
        {
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

    def show
      specie = Species.find(params[:id])
      return render json: { data: specie }
    end

    def get_locations
      specie = Species.find(params[:id])
      locations = specie.locations
      if locations.present?
        return render json: { data: locations }
      else
        return render json: { message: "No location found" }
      end
    end

  end
end
