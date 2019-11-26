class VenuesController < ApplicationController
    def index

      # if params[:category]
      # end
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
