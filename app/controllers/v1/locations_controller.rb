module V1
  class LocationsController < ApplicationController

    def index
      locations = Location.all
      return render json: { data: locations }
    end

    def show
      location = Location.find(params[:id])
      return render json: { data: location }
    end

    def get_species
      location = Location.find(params[:id])
      species = location.species
      if species.present?
        return render json: { data: species }
      else
        return render json: { message: "No specie found" }
      end
    end
    
  end
end
