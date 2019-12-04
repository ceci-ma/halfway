require 'json'
require 'open-uri'
require 'timeout'
require 'rest-client'

class Venue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :favourites, dependent: :destroy

  # def find_duration(user_input)
  #   user_location = Geocoder.search(user_input)[0].data.slice('lat', 'lon')
  #   user_url = "https://api.tfl.gov.uk/journey/journeyresults/#{user_location['lat']},#{user_location['lon']}/to/#{latitude},#{longitude}"
  #   user_serialized = open(user_url).read
  #   user = JSON.parse(user_serialized)
  #   return user["journeys"][0]["duration"]
  # end

  def find_yelp_review
    call = RestClient.get("https://api.yelp.com/v3/businesses/search?term=#{self.name.parameterize}&location=#{self.address.parameterize}", { authorization: 'Bearer _X2qhaf6L6YHJisIwjdafdYMEDYcBH8KXKVcQR4aHrs5cb_pczg15WEhdLBsmC2lCZxTbDpuZeVuFCl-egb49JKJF0NajDWTJ1EobgS_U2rxb0B7RTloNoubvWHmXXYx' })
    call1 = JSON.parse(call.body)
    venue_yelp_id = call1["businesses"][0]["id"]
    review_call = RestClient.get("https://api.yelp.com/v3/businesses/#{venue_yelp_id}/reviews", { authorization: 'Bearer _X2qhaf6L6YHJisIwjdafdYMEDYcBH8KXKVcQR4aHrs5cb_pczg15WEhdLBsmC2lCZxTbDpuZeVuFCl-egb49JKJF0NajDWTJ1EobgS_U2rxb0B7RTloNoubvWHmXXYx' })
    review_call1 = JSON.parse(review_call.body)

    reviews = []

    review_call1["reviews"].each do |review|
      review_hash = {}
      review_hash[:time_created] = review["time_created"]
      review_hash[:comment] = review["text"]
      review_hash[:name] = review["user"]["name"]
      review_hash[:rating] = review["rating"].to_i
      reviews << review_hash
    end
    return reviews
  end

  def find_duration(user_input, user)
    begin
      complete_results = Timeout.timeout(10) do
        user_location = Geocoder.search(user_input)[0].data.slice('lat', 'lon')
        user_url = "https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins=#{user_location['lat']},#{user_location['lon']}&destinations=#{latitude},#{longitude}&key=#{ENV['GMAPS_API_KEY']}"
        user_serialized = open(user_url).read
        user = JSON.parse(user_serialized)
        return user["rows"][0]["elements"][0]["duration"]["text"]
      end
    rescue
      return "#{commute_one} mins" if user == 1
      return "#{commute_two} mins" if user == 2
    end
  end
end
