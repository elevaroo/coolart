class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :account_type, :photo, account_attributes: [ :location, :nationality, :date_of_birth, :vita, :artschool, :photo]])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :photo, account_attributes: [ :location, :nationality, :date_of_birth, :vita, :artschool, :photo]])
  end

  def onboarding
    unless current_user&.collector? && current_user.account.favorite_artworks.count > 1
      redirect_to getstarted_path
    end
  end

  def after_sign_in_path_for(resource)
    getstarted_path
  end
end
