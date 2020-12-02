class FavoriteArtworksController < ApplicationController

def create
    @fav_artwork = FavoriteArtwork.new(booking_params)
    @fav_artwork.user_id = current_user.id
    @fav_artwork.artwork_id = params[:artwork_id]
    respond_to do |format|
      if @fav_artwork.save!
        format.html { redirect_to profile_path }
        format.js
      else
        #display alert
        format.html {render "artworks/show" }
      end
    end
  end

  def fav_artworks_params
    params.require(:favorite_artwork).permit(:artwork_id)
  end

end
