class UsersController < ApplicationController

  before_action do
    authenticate_user!
  end

  def follow
    user = User.find params[:id]
    @current_user.follow user
    redirect_to root_path
  end

  def delete
    user = User.find params[:id]
    @current_user.stop_following user
    redirect_to root_path
  end
end
