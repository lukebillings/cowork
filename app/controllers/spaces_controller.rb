class SpacesController < ApplicationController
  def index
    if params[:address].present?
      @spaces = Space.near(params[:address], 5)
    else
      @spaces = Space.all
    end
    @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude
      }
    end
  end
end
