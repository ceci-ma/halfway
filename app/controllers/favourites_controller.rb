class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.where(user: current_user)
    @markers = @favourites.map do |fav|
      {
        lat: fav.venue.latitude,
        lng: fav.venue.longitude,
      }
    end
  end
end
