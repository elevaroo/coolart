class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index


  end

  def show
    @order = Order.new
    @favorite_artwork = FavoriteArtwork.new
  end



end
