require 'json'
require 'open-uri'

class Venue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :favourites, dependent: :destroy

  def find_duration(user_input, user)
    begin
      user_location = Geocoder.search(user_input)[0].data.slice('lat', 'lon')
      user_url = "https://api.tfl.gov.uk/journey/journeyresults/#{user_location['lat']},#{user_location['lon']}/to/#{latitude},#{longitude}"
      user_serialized = open(user_url).read
      user = JSON.parse(user_serialized)
      return user["journeys"][0]["duration"]
    rescue
      @venue.commute_one if user == 1
      @venue.commute_two if user == 2
    end
  end
end
