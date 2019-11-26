class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
     @venues = Venue.where.not(latitude: nil, longitude: nil)

     @markers = @venues.map do |venue|
       {
         lat: venue.latitude,
         lng: venue.longitude,
       }
     end
  end
end
