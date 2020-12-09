class ArtistsController < ApplicationController
  before_action :onboarding
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @artists = Artist.all
  end

  def show
    if User.find_by_username(params[:id]).artist?
      @artist = User.find_by_username(params[:id]).account
    else
      redirect_to "request.referer"
    end
  end
end
