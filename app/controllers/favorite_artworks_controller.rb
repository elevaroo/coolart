class FavoriteArtworksController < ApplicationController
  def like_unlike
    @artwork = Artwork.find(params[:id])
    collector_id = current_user.account.id
    @fav_artwork = FavoriteArtwork.find_by(collector_id: collector_id, artwork: @artwork)
    if @fav_artwork
      @fav_artwork.destroy
    else
      @fav_artwork = FavoriteArtwork.create(collector_id: collector_id, artwork: @artwork)
    end
  end

  def create
    collector_id = current_user.account.id
    @artwork = Artwork.find(params[:artwork_id])
    @fav_artwork = FavoriteArtwork.find_or_create_by(collector_id: collector_id, artwork: @artwork)
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
