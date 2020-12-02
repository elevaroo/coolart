class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home

  @categories = %w(Painting Sculpture Photography Print Drawing)
  #can you call the inclusion(validation) values of the Category model instead?

  end
end
