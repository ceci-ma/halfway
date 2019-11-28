class VenuesController < ApplicationController
  before_action :find_venue, only: [:show]
  # To be potentially added to improve load time

   before_action :find_venue, only: [:show]
  def index
    if params[:search].present?
      @halfway = Geocoder::Calculations.geographic_center(["#{params[:search][:location_1]}", "#{params[:search][:location_2]}"])
      # removes all empty strings from the array using reject
      categories = params[:search][:category].reject do |category|
        category == ""
      end
      # creates a query which holds the place holder times the number of elements in the array
      query = "category = ? OR " * categories.length
      # removes the additional " OR " added in the query string
      query = query.chomp(" OR ")
      @geo_venues = Venue.geocoded.near(@halfway, 1).where(query, *categories)
      @venues = Venue.geocoded.near(@halfway, 1).where(query, *categories)
      @markers = @geo_venues.map do |venue|
        {
          lat: venue.latitude,
          lng: venue.longitude,
          id: venue.id,
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

  # To be potentially added to improve load time
  # def all_venues
  #   render json: { venues: Venue.geocoded }
  # end

  def find_venue
    @venue = Venue.find(params[:id])
  end
end
