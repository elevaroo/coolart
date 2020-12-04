class FavoriteArtworksController < ApplicationController

  def create
    @fav_artwork = FavoriteArtwork.new()
    @fav_artwork.collector_id = current_user.account.id
    @fav_artwork.artwork_id = params[:artwork_id]
    respond_to do |format|
      if @fav_artwork.save!
        format.html
        format.js
      else
        #display alert
        format.html
      end
    end
  end

  def destroy
    @fav_artwork = FavoriteArtwork.find(params[:id])
    @fav_artwork.destroy
  end

  private

  def fav_artworks_params
    params.require(:favorite_artwork).permit(:artwork_id)
  end

end
