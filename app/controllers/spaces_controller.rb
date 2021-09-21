class SpacesController < ApplicationController
  def index
    @spaces = Space.all
    @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude
      }
    end
  end
end
