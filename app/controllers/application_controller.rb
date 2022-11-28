class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :username, :tags, :picture_url, :age, :description])
  end
end
