class ArtworksController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = " \
        artworks.name @@ :query \
        OR artworks.description @@ :query \
        OR users.first_name @@ :query \sep
        OR users.last_name @@ :query \
      "
      @artworks = Artwork.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    elsif params[:category].present?
      @artworks = Artwork.where(category: params[:category])
      @category = params[:category]
    else
      @artworks = Artwork.all
    end
  end

  def show
    @order = Order.new
    @favorite_artwork = FavoriteArtwork.new
  end

  def new
    @artwork = Artwork.new
  end

  def edit
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    if @artwork.save
      redirect_to artists_path(@artwork)
    else
      render :new
    end
  end

  def update
    if @artwork.update(artwork_params)
      redirect_to artist_artworks_path(@artwork), notice: "Artwork was successfully updated."
    else
      render :edit, notice: "Something went wrong."
    end
  end

  def destroy
    @artwork.destroy
    redirect_to artists_path, notice: 'Artwork was successfully destroyed.'
  end

  private

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end

  def artwork_params
    params.require(:artwork).permit(:name, :description, :year, :price, :height, :width)
  end
end

# artworks[:user_id] = current_user

# rails/info/routes
