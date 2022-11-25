class UsersController < ApplicationController
  before_action :set_user, :set_events, only: %i[my_profile edit update]
  def my_profile
  end

  def edit
  end

  def update
  end

  private

  def set_user
    @my_profile = current_user
  end

  def set_events
    @my_events = current_user.events
  end
end
