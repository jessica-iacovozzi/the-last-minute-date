class UsersController < ApplicationController
  def show
    @my_profile = User.find(id: current_user)
  end
end
