class UsersController < ApplicationController
  def my_profile
    @my_profile = current_user
    @my_events = current_user.events
  end
end
