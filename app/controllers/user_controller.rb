class UserController < ApplicationController
  # GET /u/:username
  def view
    @user = User.find_by(username: params[:username])
  end
end
