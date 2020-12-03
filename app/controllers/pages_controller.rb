class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  has_scope :price_min
  has_scope :price_max

  def home
  @artworks = Artwork.all
  @categories = Category.all
  @samples = Artwork.all.sample(3)
  #can you call the inclusion(validation) values of the Category model instead?

  end
end
