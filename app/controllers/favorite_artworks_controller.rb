class FavoriteArtworksController < ApplicationController

  def create
    @fav_artwork = FavoriteArtwork.new(fav_artworks_params)
    @fav_artwork.collector_id = current_user.id
    @fav_artwork.artwork_id = params[:favorite_artwork][:artwork_id]
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

  def destroy
    @fav_artwork = FavoriteArtwork.find(params[:id])
    @fav_artwork.destroy
    redirect_to profile_path
  end

  private

  def fav_artworks_params
    params.require(:favorite_artwork).permit(:artwork_id)
  end

end
