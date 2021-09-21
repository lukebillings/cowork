class SpacesController < ApplicationController
  def index
    @spaces = Space.all
    @markers = @spaces.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end
end
