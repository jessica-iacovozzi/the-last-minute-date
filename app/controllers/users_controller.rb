class UsersController < ApplicationController
  def show
    @my_profile = current_user
    @my_events = @my_profile.events
  end
end
