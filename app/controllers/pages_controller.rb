class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :onboarding, only: [ :mystyle]
  has_scope :price_min
  has_scope :price_max

  def home
  @artworks = Artwork.all
  @categories = Category.all
  @samples = Artwork.all.sample(6)
  #can you call the inclusion(validation) values of the Category model instead?

  end

  def getstarted
    if current_user.collector?
      @samples = Artwork.all.sample(20)
    end
  end

  def mystyle

  end
end
