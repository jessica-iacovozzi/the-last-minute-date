class UsersController < ApplicationController
  def show
    @my_profile = current_user
  end
end
