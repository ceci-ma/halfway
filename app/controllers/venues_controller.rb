require 'json'
require 'open-uri'

class VenuesController < ApplicationController
  before_action :find_venue, only: [:show]

# def index
 # @venues = Venue.where.not(latitude: nil, longitude: nil)
#  end

  def index
    if params[:search].present?
      @halfway = Geocoder::Calculations.geographic_center(["#{params[:search][:location_1]}", "#{params[:search][:location_2]}"])

      @geo_venues = Venue.geocoded.near(@halfway, 1).where("category = ?", params[:search][:category])
      @venues = Venue.geocoded.near(@halfway, 1).where("category = ?", params[:search][:category])

      @markers = @geo_venues.map do |venue|
        {
          lat: venue.latitude,
          lng: venue.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { venue: venue }),
        }
      end


      user_one_lat = Geocoder.search(params[:search][:location_1])[0].data["lat"]
      user_one_long = Geocoder.search(params[:search][:location_1])[0].data["lon"]
      user_two_lat = Geocoder.search(params[:search][:location_2])[0].data["lat"]
      user_two_long = Geocoder.search(params[:search][:location_2])[0].data["lon"]


      user_one_url = "https://api.tfl.gov.uk/journey/journeyresults/#{user_one_lat},#{user_one_long}/to/#{@halfway[0]},#{@halfway[1]}"
      # raise
      # user_one_url = "https://api.tfl.gov.uk/journey/journeyresults/51.5266694,-0.0798926/to/51.51036862195179,%20-0.12648492425147326"
      user_one_serialized = open(user_one_url).read
      user_one = JSON.parse(user_one_serialized)
      @user_one_duration = user_one["journeys"][0]["duration"]

      user_two_url = "https://api.tfl.gov.uk/journey/journeyresults/51.4940494,--0.1730439/to/51.51036862195179,%20-0.12648492425147326"
      user_two_serialized = open(user_two_url).read
      user_two = JSON.parse(user_two_serialized)
      @user_two_duration = user_two["journeys"][0]["duration"]

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
