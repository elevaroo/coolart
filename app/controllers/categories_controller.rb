class CategoriesController < ApplicationController
before_action :onboarding
skip_before_action :authenticate_user!, only: :show

  def show
    @category = Category.find_by(name: params[:name])
  end
end
