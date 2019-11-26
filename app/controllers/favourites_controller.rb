class FavouritesController < ApplicationController
  def index
    # @all_favourites = Favourite.all
    # @favourites = @all_favourites.select do |favourite|
    #   favourite.user == current_user
    # end
    @favourites = Favourite.where(user: current_user)
  end
end
