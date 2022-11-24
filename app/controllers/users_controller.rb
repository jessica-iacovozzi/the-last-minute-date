class UsersController < ApplicationController
  def my_profile
    @my_profile = current_user
    @my_events = @my_profile.events
  end
end
