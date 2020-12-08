class ArtistsController < ApplicationController
  before_action :onboarding
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
