class VenuesController < ApplicationController
   before_action :find_venue, only: [:show]
  def index
  # @venues = Venue.where.not(latitude: nil, longitude: nil)

  #   @markers = @venues.map do |venue|
  #     {
  #       lat: venue.latitude,
  #       lng: venue.longitude,
  #       infoWindow: render_to_string(partial: "info_window", locals: { venue: venue })
  #     }
  #   end

    if params[:search].present?
      # @venues = Venue.near("#{params[:search][:location_1]}", 10)
      @halfway = Geocoder::Calculations.geographic_center(["#{params[:search][:location_1]}", "#{params[:search][:location_2]}"])
      @geo_venues = Venue.geocoded.near(@halfway, 10)
      @venues = Venue.geocoded.near(@halfway, 10)

      @markers = @geo_venues.map do |venue|
        {
          lat: venue.latitude,
          lng: venue.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { venue: venue }),

        }
      end
    else
      @venues = Venue.all
      @geo_venues = Venue.geocoded
      @markers = @geo_venues.map do |venue|
        {
          lat: venue.latitude,
          lng: venue.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { venue: venue }),

        }
      end
    end
  end

  def show
  end

  private

  def find_venue
    @venue = Venue.find(params[:id])
  end

end
