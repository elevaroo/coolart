class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.friendly.find(params[:id])
  end
end
