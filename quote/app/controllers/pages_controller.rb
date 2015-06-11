class PagesController < ApplicationController

  before_action do
    authenticate_user!
  end

  def dashboard
    ids_of_my_followers = @current_user.following_users
                                       .pluck(:id)
    @users = User.all
                 .where("id != ?", @current_user.id)
    # exclude current_user
    # exclude anyone I'm following

  end
end
