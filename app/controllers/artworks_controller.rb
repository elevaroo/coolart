class ArtworksController < ApplicationController
  has_scope :price_min
  has_scope :price_max
  has_scope :category
  has_scope :medium
  has_scope :tag


  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  def index
    @artworks = apply_scopes(Artwork).all
    @favorite_artwork = FavoriteArtwork.new
  end

  def show
    @order = Order.new
    @favorite_artwork = FavoriteArtwork.new
    @fav_artworks = FavoriteArtwork.all


  end

  def new
    @artwork = Artwork.new
    @artist = current_user.account
  end

  def edit
    @artist = current_user.account
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.artist = current_user.account
    if @artwork.save
      redirect_to artist_artwork_path(@artwork.artist, @artwork)
    else
      render :new
    end
  end

  def update
    if @artwork.update(artwork_params)
      redirect_to artist_artwork_path(current_user.account, @artwork), notice: "Artwork was successfully updated."
    else
      render :edit, notice: "Something went wrong."
    end
  end

  def destroy
    @artwork.destroy
    redirect_to profile_path, notice: 'Artwork was successfully destroyed.'
  end

  private

  def set_artwork
    @artwork = Artwork.find(params[:id])
    # @artwork = Artwork.find_by_username(params[:id]).account
  end

  def artwork_params
    params.require(:artwork).permit(:name, :description, :year, :price, :height, :width, :depth, :medium_id, :category_id, tags_attributes: [:name], photos: [])
  end
end

# artworks[:user_id] = current_user

# rails/info/routes
