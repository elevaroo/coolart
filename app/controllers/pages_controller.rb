class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home

  @categories = Category.all
  #can you call the inclusion(validation) values of the Category model instead?

  end
end
