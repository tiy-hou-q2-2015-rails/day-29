class PagesController < ApplicationController

  before_action do
    authenticate_user!
  end

  def dashboard



    ids_of_my_followers = @current_user.following_users
                                       .pluck(:id)

    timeline = ids_of_my_followers << @current_user.id
    @quotables = Quotable.where(user_id: timeline).order("created_at desc")

    @users = User.all
                 .reject{|u| @current_user.following? u}
                 .reject{|u| @current_user == u}
    # exclude current_user
    # exclude anyone I'm following

  end
end
