class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  protected

  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, { tags: [] }, :age, :description, photos: []])
  end
end
