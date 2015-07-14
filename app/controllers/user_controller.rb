class UserController < ApplicationController
  include ApplicationHelper
  #GET /u/:username
  def view
    @subreddits = subreddits
    @user = User.find_by(username: params[:username])
  end
end
