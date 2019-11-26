class VenuesController < ApplicationController
    def index
    @venues = Venue.where.not(latitude: nil, longitude: nil)

      @markers = @venues.map do |venue|
        {
          lat: venue.latitude,
          lng: venue.longitude
        }
      end
  end

  def show
    @venue = Venue.find(params[:id])
  end
end
