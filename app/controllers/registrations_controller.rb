class RegistrationsController < Devise::RegistrationsController
  def after_update_path_for(resource)
    my_profile_path(resource)
  end
end
