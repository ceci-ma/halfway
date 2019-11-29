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

  def create
    # create a new favourite
    @favourite = Favourite.new
    # it needs a venue id ()
    @venue = Venue.find(params[:venue_id])
    @favourite.venue = @venue
    # and a user id (current_user)
    @favourite.user = current_user
    @favourite.save
    redirect_to venue_path(@venue)
    redirect_to current_path
  end

  def destroy
    # find the correct favourite using id in url
    @favourite = Favourite.find(params[:id])
    @venue = @favourite.venue
    # .destroy on it
    @favourite.destroy
    redirect_to venue_path(@venue)
  end
end
