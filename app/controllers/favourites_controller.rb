class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.where(user: current_user)
  end
end
