module V1
  class ArcGisController < ApplicationController
    def dataset
      debugger
      response = HTTParty.get('https://opendata.arcgis.com/datasets/NIWA::survey-of-algae-sponges-and-ascidians-fiji-2007/FeatureServer/0/query?where=1=1&outFields=*&outSR=4326&f=geojson')
    end
  end
end
