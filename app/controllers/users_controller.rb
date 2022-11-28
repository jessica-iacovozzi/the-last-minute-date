class UsersController < ApplicationController
  before_action :set_user, :set_events, only: %i[my_profile edit update show]
  def my_profile
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:id)
  end

  def set_user
    @my_profile = current_user
  end

  def set_events
    @my_events = current_user.events
  end
end
