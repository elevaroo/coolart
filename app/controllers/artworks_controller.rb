class ArtworksController < ApplicationController
  def show
    @order = Order.new
    @favorite_artwork = FavoriteArtwork.new
  end
end
